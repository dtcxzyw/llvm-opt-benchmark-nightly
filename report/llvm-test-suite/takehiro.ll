inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@best_scalefac_store:bb.a

bb.t:                                             ; preds = %._crit_edge191
  %i.eg = tail call i32 @scale_bitcount_lsf(ptr noundef %i.n, ptr noundef nonnull %i.e) #6 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge184, %bb.t, %bb.s, %bb.r, %.split.us
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !72
  %i.ej = icmp eq i32 %i.ei, 2
  %i.ek = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ek, %i.ej
  br i1 %or.cond3, label %bb.v, label %scfsi_calc.exit

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds [120 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !73
  %.not139 = icmp eq i32 %i.en, 2
  br i1 %.not139, label %scfsi_calc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ep = getelementptr inbounds [120 x i8], ptr %i.eo, i64 %i.d ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !73
  %.not140 = icmp eq i32 %i.er, 2
  br i1 %.not140, label %scfsi_calc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 68
  %i.et = load i32, ptr %i.es, align 4, !tbaa !75
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 68
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !75
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.y, label %scfsi_calc.exit

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !76
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !76
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.z, label %scfsi_calc.exit

bb.z:                                             ; preds = %bb.y
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fd = getelementptr inbounds [16 x i8], ptr %i.fc, i64 %i.d ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fd, i8 0, i64 16, i1 false), !tbaa !4
  %i.fe = getelementptr inbounds [244 x i8], ptr %5, i64 %i.d ; 21 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 488
  %i.fg = getelementptr inbounds [244 x i8], ptr %i.ff, i64 %i.d ; 39 uses
  %i.fh = mul nsw i64 %i.d, 244
  %i.fi = getelementptr i8, ptr %5, i64 %i.fh     ; 4 uses
  %scevgep.i = getelementptr i8, ptr %i.fi, i64 488
  %i.fj = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fk = load i32, ptr %i.fg, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.fj, %i.fk
  br i1 %.not.i, label %.lr.ph.1125.i, label %.lr.ph.preheader.1.i

.lr.ph.1125.i:                                    ; preds = %bb.z
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %.not.1124.i = icmp eq i32 %i.fm, %i.fo
  br i1 %.not.1124.i, label %.lr.ph.2127.i, label %.lr.ph.preheader.1.i

.lr.ph.2127.i:                                    ; preds = %.lr.ph.1125.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %.not.2126.i = icmp eq i32 %i.fq, %i.fs
  br i1 %.not.2126.i, label %.lr.ph.3129.i, label %.lr.ph.preheader.1.i

.lr.ph.3129.i:                                    ; preds = %.lr.ph.2127.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4
  %.not.3128.i = icmp eq i32 %i.fu, %i.fw
  br i1 %.not.3128.i, label %.lr.ph.4.i, label %.lr.ph.preheader.1.i

.lr.ph.4.i:                                       ; preds = %.lr.ph.3129.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %.not.4.i = icmp eq i32 %i.fy, %i.ga
  br i1 %.not.4.i, label %.lr.ph.5.i, label %.lr.ph.preheader.1.i

.lr.ph.5.i:                                       ; preds = %.lr.ph.4.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4
  %.not.5.i = icmp eq i32 %i.gc, %i.ge
  br i1 %.not.5.i, label %._crit_edge102.i, label %.lr.ph.preheader.1.i

._crit_edge102.i:                                 ; preds = %.lr.ph.5.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %scevgep.i, i8 -1, i64 24, i1 false), !tbaa !4
  store i32 1, ptr %i.fd, align 4, !tbaa !4
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge102.i, %.lr.ph.5.i, %.lr.ph.4.i, %.lr.ph.3129.i, %.lr.ph.2127.i, %.lr.ph.1125.i, %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %.not.1.i = icmp eq i32 %i.gg, %i.gi
  br i1 %.not.1.i, label %.lr.ph.1.1.i, label %.lr.ph.preheader.2.i

.lr.ph.1.1.i:                                     ; preds = %.lr.ph.preheader.1.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fe, i64 28
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !4
  %.not.1.1.i = icmp eq i32 %i.gk, %i.gm
  br i1 %.not.1.1.i, label %.lr.ph.1.2.i, label %.lr.ph.preheader.2.i

.lr.ph.1.2.i:                                     ; preds = %.lr.ph.1.1.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4
  %.not.1.2.i = icmp eq i32 %i.go, %i.gq
  br i1 %.not.1.2.i, label %.lr.ph.1.3.i, label %.lr.ph.preheader.2.i

.lr.ph.1.3.i:                                     ; preds = %.lr.ph.1.2.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %.not.1.3.i = icmp eq i32 %i.gs, %i.gu
  br i1 %.not.1.3.i, label %.lr.ph.1.4.i, label %.lr.ph.preheader.2.i

.lr.ph.1.4.i:                                     ; preds = %.lr.ph.1.3.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not.1.4.i = icmp eq i32 %i.gw, %i.gy
  br i1 %.not.1.4.i, label %._crit_edge102.1.i, label %.lr.ph.preheader.2.i

._crit_edge102.1.i:                               ; preds = %.lr.ph.1.4.i
  %scevgep116.1.i = getelementptr i8, ptr %i.fi, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.1.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 1, ptr %i.gz, align 4, !tbaa !4
  br label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge102.1.i, %.lr.ph.1.4.i, %.lr.ph.1.3.i, %.lr.ph.1.2.i, %.lr.ph.1.1.i, %.lr.ph.preheader.1.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fe, i64 44
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fg, i64 44 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %.not.2.i = icmp eq i32 %i.hb, %i.hd
  br i1 %.not.2.i, label %.lr.ph.2.1.i, label %.lr.ph.preheader.3.i

.lr.ph.2.1.i:                                     ; preds = %.lr.ph.preheader.2.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %.not.2.1.i = icmp eq i32 %i.hf, %i.hh
  br i1 %.not.2.1.i, label %.lr.ph.2.2.i, label %.lr.ph.preheader.3.i

.lr.ph.2.2.i:                                     ; preds = %.lr.ph.2.1.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fe, i64 52
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %.not.2.2.i = icmp eq i32 %i.hj, %i.hl
  br i1 %.not.2.2.i, label %.lr.ph.2.3.i, label %.lr.ph.preheader.3.i

.lr.ph.2.3.i:                                     ; preds = %.lr.ph.2.2.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %.not.2.3.i = icmp eq i32 %i.hn, %i.hp
  br i1 %.not.2.3.i, label %.lr.ph.2.4.i, label %.lr.ph.preheader.3.i

.lr.ph.2.4.i:                                     ; preds = %.lr.ph.2.3.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fe, i64 60
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fg, i64 60
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !4
  %.not.2.4.i = icmp eq i32 %i.hr, %i.ht
  br i1 %.not.2.4.i, label %._crit_edge102.2.i, label %.lr.ph.preheader.3.i

._crit_edge102.2.i:                               ; preds = %.lr.ph.2.4.i
  %scevgep116.2.i = getelementptr i8, ptr %i.fi, i64 532
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.2.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 1, ptr %i.hu, align 4, !tbaa !4
  br label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge102.2.i, %.lr.ph.2.4.i, %.lr.ph.2.3.i, %.lr.ph.2.2.i, %.lr.ph.2.1.i, %.lr.ph.preheader.2.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4  ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4  ; 2 uses
  %.not.3.i = icmp eq i32 %i.hw, %i.hy
  br i1 %.not.3.i, label %.lr.ph.3.1.i, label %._crit_edge.3.thread.i

.lr.ph.3.1.i:                                     ; preds = %.lr.ph.preheader.3.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fe, i64 68
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !4
  %.not.3.1.i = icmp eq i32 %i.ia, %i.ic
  br i1 %.not.3.1.i, label %.lr.ph.3.2.i, label %._crit_edge.3.thread.i

.lr.ph.3.2.i:                                     ; preds = %.lr.ph.3.1.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %.not.3.2.i = icmp eq i32 %i.ie, %i.ig
  br i1 %.not.3.2.i, label %.lr.ph.3.3.i, label %._crit_edge.3.thread.i

.lr.ph.3.3.i:                                     ; preds = %.lr.ph.3.2.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.fe, i64 76
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  %.not.3.3.i = icmp eq i32 %i.ii, %i.ik
  br i1 %.not.3.3.i, label %.lr.ph.3.4.i, label %._crit_edge.3.thread.i

.lr.ph.3.4.i:                                     ; preds = %.lr.ph.3.3.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.im = load i32, ptr %i.il, align 4, !tbaa !4
  %i.in = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %.not.3.4.i = icmp eq i32 %i.im, %i.io
  br i1 %.not.3.4.i, label %._crit_edge102.3.i, label %._crit_edge.3.thread.i

._crit_edge102.3.i:                               ; preds = %.lr.ph.3.4.i
  %scevgep116.3.i = getelementptr i8, ptr %i.fi, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep116.3.i, i8 -1, i64 20, i1 false), !tbaa !4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  store i32 1, ptr %i.ip, align 4, !tbaa !4
  %.pre243 = load i32, ptr %i.hx, align 4, !tbaa !4
  br label %._crit_edge.3.thread.i

._crit_edge.3.thread.i:                           ; preds = %._crit_edge102.3.i, %.lr.ph.3.4.i, %.lr.ph.3.3.i, %.lr.ph.3.2.i, %.lr.ph.3.1.i, %.lr.ph.preheader.3.i
  %6 = phi i32 [ %.pre243, %._crit_edge102.3.i ], [ %i.hw, %.lr.ph.3.4.i ], [ %i.hw, %.lr.ph.3.3.i ], [ %i.hw, %.lr.ph.3.2.i ], [ %i.hw, %.lr.ph.3.1.i ], [ %i.hy, %.lr.ph.preheader.3.i ] ; 2 uses
  %i.iq = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, -1
  %i.is = zext i1 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4  ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  %spec.select.1.i.a = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 %i.iu)
  %i.iw = zext i1 %i.iv to i32
  %.180.1.i = add nuw nsw i32 %i.iw, %i.is
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4  ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, -1
  %spec.select.2.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.1.i.a, i32 %i.iy)
  %i.ja = zext i1 %i.iz to i32
  %.180.2.i = add nuw nsw i32 %.180.1.i, %i.ja
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4  ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, -1
  %spec.select.3.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.2.i.a, i32 %i.jc)
  %i.je = zext i1 %i.jd to i32
  %.180.3.i = add nuw nsw i32 %.180.2.i, %i.je
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4  ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, -1
  %spec.select.4.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.3.i.a, i32 %i.jg)
  %i.ji = zext i1 %i.jh to i32
  %.180.4.i = add nuw nsw i32 %.180.3.i, %i.ji
  %i.jj = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4  ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, -1
  %spec.select.5.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.4.i.a, i32 %i.jk)
  %i.jm = zext i1 %i.jl to i32
  %.180.5.i = add nuw nsw i32 %.180.4.i, %i.jm
  %i.jn = load i32, ptr %i.gh, align 4, !tbaa !4  ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, -1
  %spec.select.6.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.5.i.a, i32 %i.jn)
  %i.jp = zext i1 %i.jo to i32
  %.180.6.i = add nuw nsw i32 %.180.5.i, %i.jp
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4  ; 2 uses
  %i.js = icmp sgt i32 %i.jr, -1
  %spec.select.7.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.6.i.a, i32 %i.jr)
  %i.jt = zext i1 %i.js to i32
  %.180.7.i = add nuw nsw i32 %.180.6.i, %i.jt
  %i.ju = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4  ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  %spec.select.8.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.7.i.a, i32 %i.jv)
  %i.jx = zext i1 %i.jw to i32
  %.180.8.i = add nuw nsw i32 %.180.7.i, %i.jx
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fg, i64 36
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !4  ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, -1
  %spec.select.9.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select.8.i.a, i32 %i.jz)
  %i.kb = zext i1 %i.ka to i32
  %.180.9.i = add nuw nsw i32 %.180.8.i, %i.kb
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4  ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, -1
  %spec.select.10.i = tail call i32 @llvm.smax.i32(i32 %spec.select.9.i.a, i32 %i.kd) ; 5 uses
  %i.kf = zext i1 %i.ke to i32
  %.180.10.i = add nuw nsw i32 %.180.9.i, %i.kf   ; 12 uses
  %i.kg = load i32, ptr %i.hc, align 4, !tbaa !4  ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, -1
  %i.ki = zext i1 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !4  ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, -1
  %spec.select86.1.i.a = tail call i32 @llvm.smax.i32(i32 %i.kg, i32 %i.kk)
  %i.km = zext i1 %i.kl to i32
  %.178.1.i = add nuw nsw i32 %i.km, %i.ki
  %i.kn = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4  ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, -1
  %spec.select86.2.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.1.i.a, i32 %i.ko)
  %i.kq = zext i1 %i.kp to i32
  %.178.2.i = add nuw nsw i32 %.178.1.i, %i.kq
  %i.kr = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4  ; 2 uses
  %i.kt = icmp sgt i32 %i.ks, -1
  %spec.select86.3.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.2.i.a, i32 %i.ks)
  %i.ku = zext i1 %i.kt to i32
  %.178.3.i = add nuw nsw i32 %.178.2.i, %i.ku
  %i.kv = getelementptr inbounds nuw i8, ptr %i.fg, i64 60
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4  ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, -1
  %spec.select86.4.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.3.i.a, i32 %i.kw)
  %i.ky = zext i1 %i.kx to i32
  %.178.4.i = add nuw nsw i32 %.178.3.i, %i.ky
  %i.kz = icmp sgt i32 %6, -1
  %spec.select86.5.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.4.i.a, i32 %6)
  %i.la = zext i1 %i.kz to i32
  %.178.5.i = add nuw nsw i32 %.178.4.i, %i.la
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fg, i64 68
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !4  ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, -1
  %spec.select86.6.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.5.i.a, i32 %i.lc)
  %i.le = zext i1 %i.ld to i32
  %.178.6.i = add nuw nsw i32 %.178.5.i, %i.le
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4  ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, -1
  %spec.select86.7.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.6.i.a, i32 %i.lg)
  %i.li = zext i1 %i.lh to i32
  %.178.7.i = add nuw nsw i32 %.178.6.i, %i.li
  %i.lj = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !4  ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, -1
  %spec.select86.8.i.a = tail call i32 @llvm.smax.i32(i32 %spec.select86.7.i.a, i32 %i.lk)
  %i.lm = zext i1 %i.ll to i32
  %.178.8.i = add nuw nsw i32 %.178.7.i, %i.lm
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !4  ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, -1
  %spec.select86.9.i = tail call i32 @llvm.smax.i32(i32 %spec.select86.8.i.a, i32 %i.lo) ; 15 uses
  %i.lq = zext i1 %i.lp to i32
  %.178.9.i = add nuw nsw i32 %.178.8.i, %i.lq    ; 16 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ep, i64 76 ; 30 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 15 uses
  %7 = icmp slt i32 %spec.select.10.i, 1
  br i1 %7, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %._crit_edge.3.thread.i
  %8 = icmp slt i32 %spec.select86.9.i, 2
  br i1 %8, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !64 ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, %.178.9.i
  br i1 %i.lu, label %bb.ac, label %.thread147.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %.178.9.i, ptr %i.lr, align 4, !tbaa !64
  store i32 1, ptr %i.ls, align 8, !tbaa !77
  br label %.thread147.i

bb.ad:                                            ; preds = %bb.aa
  %i.lv = icmp samesign ult i32 %spec.select86.9.i, 4
  br i1 %i.lv, label %..thread147.i_crit_edge, label %bb.af

..thread147.i_crit_edge:                          ; preds = %bb.ad
  %.pre243.a = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread147.i

.thread147.i:                                     ; preds = %..thread147.i_crit_edge, %bb.ac, %bb.ab
  %i.lw = phi i32 [ %.pre243.a, %..thread147.i_crit_edge ], [ %.178.9.i, %bb.ac ], [ %i.lt, %bb.ab ] ; 2 uses
  %i.lx = shl nuw nsw i32 %.178.9.i, 1            ; 3 uses
  %i.ly = icmp sgt i32 %i.lw, %i.lx
  br i1 %i.ly, label %bb.ae, label %.thread151.i

bb.ae:                                            ; preds = %.thread147.i
  store i32 %i.lx, ptr %i.lr, align 4, !tbaa !64
  store i32 2, ptr %i.ls, align 8, !tbaa !77
  br label %.thread151.i

bb.af:                                            ; preds = %bb.ad
  %i.lz = icmp samesign ult i32 %spec.select86.9.i, 8
  br i1 %i.lz, label %..thread151.i_crit_edge, label %scfsi_calc.exit

..thread151.i_crit_edge:                          ; preds = %bb.af
  %.pre244 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread151.i

.thread151.i:                                     ; preds = %..thread151.i_crit_edge, %bb.ae, %.thread147.i
  %i.ma = phi i32 [ %.pre244, %..thread151.i_crit_edge ], [ %i.lx, %bb.ae ], [ %i.lw, %.thread147.i ]
  %i.mb = mul nuw nsw i32 %.178.9.i, 3            ; 2 uses
  %i.mc = icmp sgt i32 %i.ma, %i.mb
  br i1 %i.mc, label %bb.ag, label %.thread153.i

bb.ag:                                            ; preds = %.thread151.i
  store i32 %i.mb, ptr %i.lr, align 4, !tbaa !64
  store i32 3, ptr %i.ls, align 8, !tbaa !77
  br label %.thread153.i

bb.ah:                                            ; preds = %._crit_edge.3.thread.i
  %i.md = icmp samesign ult i32 %spec.select.10.i, 8
  br i1 %i.md, label %.thread153.i, label %.thread170.thread.i

.thread153.i:                                     ; preds = %bb.ah, %bb.ag, %.thread151.i
  %9 = icmp slt i32 %spec.select86.9.i, 1
  br i1 %9, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread153.i
  %i.me = mul nuw nsw i32 %.180.10.i, 3           ; 2 uses
  %i.mf = load i32, ptr %i.lr, align 4, !tbaa !64
  %i.mg = icmp sgt i32 %i.mf, %i.me
  br i1 %i.mg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.me, ptr %i.lr, align 4, !tbaa !64
  store i32 4, ptr %i.ls, align 8, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.thread153.i
  %10 = icmp slt i32 %spec.select.10.i, 2
  br i1 %10, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %11 = icmp slt i32 %spec.select86.9.i, 2
  br i1 %11, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.mh = add nuw nsw i32 %.178.9.i, %.180.10.i   ; 3 uses
  %i.mi = load i32, ptr %i.lr, align 4, !tbaa !64 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, %i.mh
  br i1 %i.mj, label %bb.an, label %.thread158.i

bb.an:                                            ; preds = %bb.am
  store i32 %i.mh, ptr %i.lr, align 4, !tbaa !64
  store i32 5, ptr %i.ls, align 8, !tbaa !77
  br label %.thread158.i

bb.ao:                                            ; preds = %bb.al
  %i.mk = icmp samesign ult i32 %spec.select86.9.i, 4
  br i1 %i.mk, label %..thread158.i_crit_edge, label %bb.aq

..thread158.i_crit_edge:                          ; preds = %bb.ao
  %.pre245 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread158.i

.thread158.i:                                     ; preds = %..thread158.i_crit_edge, %bb.an, %bb.am
  %i.ml = phi i32 [ %.pre245, %..thread158.i_crit_edge ], [ %i.mh, %bb.an ], [ %i.mi, %bb.am ] ; 2 uses
  %i.mm = shl nuw nsw i32 %.178.9.i, 1
  %i.mn = add nuw nsw i32 %i.mm, %.180.10.i       ; 3 uses
  %i.mo = icmp sgt i32 %i.ml, %i.mn
  br i1 %i.mo, label %bb.ap, label %.thread162.i

bb.ap:                                            ; preds = %.thread158.i
  store i32 %i.mn, ptr %i.lr, align 4, !tbaa !64
  store i32 6, ptr %i.ls, align 8, !tbaa !77
  br label %.thread162.i

bb.aq:                                            ; preds = %bb.ao
  %i.mp = icmp samesign ult i32 %spec.select86.9.i, 8
  br i1 %i.mp, label %..thread162.i_crit_edge, label %scfsi_calc.exit

..thread162.i_crit_edge:                          ; preds = %bb.aq
  %.pre246 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread162.i

.thread162.i:                                     ; preds = %..thread162.i_crit_edge, %bb.ap, %.thread158.i
  %i.mq = phi i32 [ %.pre246, %..thread162.i_crit_edge ], [ %i.mn, %bb.ap ], [ %i.ml, %.thread158.i ]
  %i.mr = mul nuw nsw i32 %.178.9.i, 3
  %i.ms = add nuw nsw i32 %i.mr, %.180.10.i       ; 2 uses
  %i.mt = icmp sgt i32 %i.mq, %i.ms
  br i1 %i.mt, label %bb.ar, label %.thread164.i

bb.ar:                                            ; preds = %.thread162.i
  store i32 %i.ms, ptr %i.lr, align 4, !tbaa !64
  store i32 7, ptr %i.ls, align 8, !tbaa !77
  br label %.thread164.i

bb.as:                                            ; preds = %bb.ak
  %i.mu = icmp samesign ult i32 %spec.select.10.i, 4
  br i1 %i.mu, label %.thread164.i, label %.thread170.i

.thread164.i:                                     ; preds = %bb.as, %bb.ar, %.thread162.i
  %12 = icmp slt i32 %spec.select86.9.i, 2
  br i1 %12, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.thread164.i
  %i.mv = shl nuw nsw i32 %.180.10.i, 1
  %i.mw = add nuw nsw i32 %.178.9.i, %i.mv        ; 3 uses
  %i.mx = load i32, ptr %i.lr, align 4, !tbaa !64 ; 2 uses
  %i.my = icmp sgt i32 %i.mx, %i.mw
  br i1 %i.my, label %bb.au, label %.thread167.i

bb.au:                                            ; preds = %bb.at
  store i32 %i.mw, ptr %i.lr, align 4, !tbaa !64
  store i32 8, ptr %i.ls, align 8, !tbaa !77
  br label %.thread167.i

bb.av:                                            ; preds = %.thread164.i
  %i.mz = icmp samesign ult i32 %spec.select86.9.i, 4
  br i1 %i.mz, label %..thread167.i_crit_edge, label %bb.ax

..thread167.i_crit_edge:                          ; preds = %bb.av
  %.pre247 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread167.i

.thread167.i:                                     ; preds = %..thread167.i_crit_edge, %bb.at, %bb.au
  %i.na = phi i32 [ %.pre247, %..thread167.i_crit_edge ], [ %i.mx, %bb.at ], [ %i.mw, %bb.au ] ; 2 uses
  %i.nb = add nuw nsw i32 %.178.9.i, %.180.10.i
  %i.nc = shl nuw nsw i32 %i.nb, 1                ; 3 uses
  %i.nd = icmp sgt i32 %i.na, %i.nc
  br i1 %i.nd, label %bb.aw, label %.thread172.i

bb.aw:                                            ; preds = %.thread167.i
  store i32 %i.nc, ptr %i.lr, align 4, !tbaa !64
  store i32 9, ptr %i.ls, align 8, !tbaa !77
  br label %.thread172.i

bb.ax:                                            ; preds = %bb.av
  %i.ne = icmp samesign ult i32 %spec.select86.9.i, 8
  br i1 %i.ne, label %..thread172.i_crit_edge, label %scfsi_calc.exit

..thread172.i_crit_edge:                          ; preds = %bb.ax
  %.pre248 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread172.i

.thread172.i:                                     ; preds = %..thread172.i_crit_edge, %bb.aw, %.thread167.i
  %i.nf = phi i32 [ %.pre248, %..thread172.i_crit_edge ], [ %i.nc, %bb.aw ], [ %i.na, %.thread167.i ]
  %i.ng = shl nuw nsw i32 %.180.10.i, 1
  %i.nh = mul nuw nsw i32 %.178.9.i, 3
  %i.ni = add nuw nsw i32 %i.nh, %i.ng            ; 2 uses
  %i.nj = icmp sgt i32 %i.nf, %i.ni
  br i1 %i.nj, label %bb.ay, label %.thread170.i

bb.ay:                                            ; preds = %.thread172.i
  store i32 %i.ni, ptr %i.lr, align 4, !tbaa !64
  store i32 10, ptr %i.ls, align 8, !tbaa !77
  br label %.thread170.i

.thread170.i:                                     ; preds = %.thread172.i, %bb.ay, %bb.as
  %13 = icmp slt i32 %spec.select86.9.i, 2
  br i1 %13, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %.thread170.i
  %i.nk = mul nuw nsw i32 %.180.10.i, 3           ; 3 uses
  %i.nl = add nuw nsw i32 %.178.9.i, %i.nk        ; 3 uses
  %i.nm = load i32, ptr %i.lr, align 4, !tbaa !64 ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, %i.nl
  br i1 %i.nn, label %bb.ba, label %.thread176.i

bb.ba:                                            ; preds = %bb.az
  store i32 %i.nl, ptr %i.lr, align 4, !tbaa !64
  store i32 11, ptr %i.ls, align 8, !tbaa !77
  br label %.thread176.i

bb.bb:                                            ; preds = %.thread170.i
  %i.no = icmp samesign ult i32 %spec.select86.9.i, 4
  br i1 %i.no, label %..thread176.i_crit_edge, label %bb.bd

..thread176.i_crit_edge:                          ; preds = %bb.bb
  %.pre249 = load i32, ptr %i.lr, align 4, !tbaa !64
  %.pre252.a = mul nuw nsw i32 %.180.10.i, 3
  br label %.thread176.i

.thread176.i:                                     ; preds = %..thread176.i_crit_edge, %bb.ba, %bb.az
  %.pre-phi = phi i32 [ %.pre252.a, %..thread176.i_crit_edge ], [ %i.nk, %bb.ba ], [ %i.nk, %bb.az ]
  %i.np = phi i32 [ %.pre249, %..thread176.i_crit_edge ], [ %i.nl, %bb.ba ], [ %i.nm, %bb.az ] ; 2 uses
  %i.nq = shl nuw nsw i32 %.178.9.i, 1
  %i.nr = add nuw nsw i32 %i.nq, %.pre-phi        ; 3 uses
  %i.ns = icmp sgt i32 %i.np, %i.nr
  br i1 %i.ns, label %bb.bc, label %.thread180.i

bb.bc:                                            ; preds = %.thread176.i
  store i32 %i.nr, ptr %i.lr, align 4, !tbaa !64
  store i32 12, ptr %i.ls, align 8, !tbaa !77
  br label %.thread180.i

bb.bd:                                            ; preds = %bb.bb
  %i.nt = icmp samesign ult i32 %spec.select86.9.i, 8
  br i1 %i.nt, label %..thread180.i_crit_edge, label %scfsi_calc.exit

..thread180.i_crit_edge:                          ; preds = %bb.bd
  %.pre250 = load i32, ptr %i.lr, align 4, !tbaa !64
  br label %.thread180.i

.thread180.i:                                     ; preds = %..thread180.i_crit_edge, %bb.bc, %.thread176.i
  %i.nu = phi i32 [ %.pre250, %..thread180.i_crit_edge ], [ %i.nr, %bb.bc ], [ %i.np, %.thread176.i ]
  %i.nv = add nuw nsw i32 %.178.9.i, %.180.10.i
  %i.nw = mul nuw nsw i32 %i.nv, 3                ; 2 uses
  %i.nx = icmp sgt i32 %i.nu, %i.nw
  br i1 %i.nx, label %bb.be, label %.thread182.i

bb.be:                                            ; preds = %.thread180.i
  store i32 %i.nw, ptr %i.lr, align 4, !tbaa !64
  store i32 13, ptr %i.ls, align 8, !tbaa !77
  br label %.thread182.i

.thread170.thread.i:                              ; preds = %bb.ah
  %i.ny = icmp samesign ult i32 %spec.select.10.i, 16
  br i1 %i.ny, label %.thread182.i, label %scfsi_calc.exit

.thread182.i:                                     ; preds = %.thread170.thread.i, %bb.be, %.thread180.i
  %14 = icmp slt i32 %spec.select86.9.i, 4
  br i1 %14, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.thread182.i
  %i.nz = shl nuw nsw i32 %.180.10.i, 2           ; 3 uses
  %i.oa = shl nuw nsw i32 %.178.9.i, 1
  %i.ob = add nuw nsw i32 %i.oa, %i.nz            ; 3 uses
  %i.oc = load i32, ptr %i.lr, align 4, !tbaa !64 ; 2 uses
  %i.od = icmp sgt i32 %i.oc, %i.ob
  br i1 %i.od, label %bb.bg, label %.thread184.i

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.ob, ptr %i.lr, align 4, !tbaa !64
  store i32 14, ptr %i.ls, align 8, !tbaa !77
  br label %.thread184.i

bb.bh:                                            ; preds = %.thread182.i
  %i.oe = icmp samesign ult i32 %spec.select86.9.i, 8
  br i1 %i.oe, label %..thread184.i_crit_edge, label %scfsi_calc.exit

..thread184.i_crit_edge:                          ; preds = %bb.bh
  %.pre251 = load i32, ptr %i.lr, align 4, !tbaa !64
  %.pre253 = shl nuw nsw i32 %.180.10.i, 2
  br label %.thread184.i

.thread184.i:                                     ; preds = %..thread184.i_crit_edge, %bb.bf, %bb.bg
  %.pre-phi254 = phi i32 [ %.pre253, %..thread184.i_crit_edge ], [ %i.nz, %bb.bf ], [ %i.nz, %bb.bg ]
  %i.of = phi i32 [ %.pre251, %..thread184.i_crit_edge ], [ %i.oc, %bb.bf ], [ %i.ob, %bb.bg ]
  %i.og = mul nuw nsw i32 %.178.9.i, 3
  %i.oh = add nuw nsw i32 %i.og, %.pre-phi254     ; 2 uses
  %i.oi = icmp sgt i32 %i.of, %i.oh
  br i1 %i.oi, label %bb.bi, label %scfsi_calc.exit

bb.bi:                                            ; preds = %.thread184.i
  store i32 %i.oh, ptr %i.lr, align 4, !tbaa !64
  store i32 15, ptr %i.ls, align 8, !tbaa !77
  br label %scfsi_calc.exit

scfsi_calc.exit:                                  ; preds = %bb.bd, %bb.ax, %bb.aq, %bb.af, %bb.bi, %.thread184.i, %bb.bh, %.thread170.thread.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.oj = load i32, ptr %i.ce, align 4, !tbaa !64
  %i.ok = load i32, ptr %i.e, align 8, !tbaa !52
  %i.ol = add i32 %i.ok, %i.oj
  store i32 %i.ol, ptr %i.e, align 8, !tbaa !52
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !6, i64 104}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !5, i64 260}
!17 = !{!"", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 148, !20, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !18, i64 168, !18, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !20, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !20, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!18 = !{!"long", !6, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"float", !6, i64 0}
!21 = !{!9, !5, i64 24}
!22 = !{!9, !5, i64 4}
!23 = distinct !{!23, !15}
!24 = !{!9, !5, i64 8}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !15}
!27 = !{!9, !5, i64 72}
!28 = !{!9, !5, i64 88}
!29 = distinct !{!29, !15}
!30 = !{!31, !5, i64 0}
!31 = !{!"", !5, i64 0, !5, i64 4}
!32 = distinct !{!32, !15}
!33 = !{!9, !5, i64 56}
!34 = !{!31, !5, i64 4}
!35 = distinct !{!35, !15}
!36 = !{!9, !5, i64 60}
!37 = distinct !{!37, !15, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !15, !39, !38}
!41 = !{!42, !19, i64 16}
!42 = !{!"huffcodetab", !5, i64 0, !5, i64 4, !43, i64 8, !19, i64 16}
!43 = !{!"p1 long", !11, i64 0}
!44 = distinct !{!44, !15}
!45 = !{!10, !10, i64 0}
!46 = distinct !{!46, !15}
!47 = !{!42, !5, i64 4}
!48 = !{!42, !5, i64 0}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !38, !39}
!51 = distinct !{!51, !15, !39, !38}
!52 = !{!9, !5, i64 0}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15, !38, !39}
!55 = distinct !{!55, !15, !39, !38}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = !{!9, !5, i64 80}
!59 = !{!9, !5, i64 84}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = !{!9, !5, i64 76}
!65 = !{!9, !5, i64 68}
!66 = !{!9, !5, i64 64}
!67 = distinct !{!67, !15, !38, !39}
!68 = distinct !{!68, !15, !39, !38}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = !{!17, !5, i64 200}
!73 = !{!74, !5, i64 24}
!74 = !{!"gr_info_ss", !9, i64 0}
!75 = !{!74, !5, i64 68}
!76 = !{!74, !5, i64 64}
!77 = !{!9, !5, i64 16}
end_hunk_0
