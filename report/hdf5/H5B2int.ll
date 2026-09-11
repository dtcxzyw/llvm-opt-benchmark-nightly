Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2int?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5B2__redistribute3:bb.a
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.el
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.en
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !41
  %.mask = and i32 %i.eg, 65535
  %i.es = zext nneg i32 %.mask to i64
  %i.et = mul i64 %i.er, %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eo, i64 %i.et, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0453 = phi i16 [ %i.eh, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !34
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !39 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.dt
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.ez = zext i16 %.0453 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fb
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.fc, i64 %i.ff, i1 false)
  %i.fg = add i16 %.0453, 1                       ; 4 uses
  %i.fh = load ptr, ptr %i.dk, align 8, !tbaa !39 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fi
  %i.fk = zext i16 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fm
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !40
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !41
  %i.fr = load i16, ptr %.2520, align 2, !tbaa !48
  %i.fs = zext i16 %i.fr to i32
  %i.ft = zext i16 %i.fg to i32                   ; 2 uses
  %i.fu = sub nsw i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.fq, %i.fv
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fn, i64 %i.fw, i1 false)
  br i1 %i.h, label %bb.u, label %.thread653

bb.u:                                             ; preds = %bb.t
  %i.fx = load i16, ptr %.2526, align 2, !tbaa !48 ; 2 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = sub nsw i32 %i.df, %i.fy                ; 3 uses
  %i.ga = zext i16 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = zext i32 %i.fz to i64                   ; 5 uses
  %i.ge = mul nuw nsw i64 %i.gd, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %.1554, i64 %i.ge, i1 false)
  %.not = icmp eq i32 %i.df, %i.fy
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter = and i64 %i.gd, 3                    ; 3 uses
  %i.gf = icmp ult i32 %i.fz, 4
  br i1 %i.gf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gd, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0452776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !44
  %i.gj = add i64 %i.gi, %.0452776
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !44
  %i.gn = add i64 %i.gm, %i.gj
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !44
  %i.gr = add i64 %i.gq, %i.gn
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.gv = add i64 %i.gu, %i.gr                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0452776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod854 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod854)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0452776.epil = phi i64 [ %i.gz, %.lr.ph.epil ], [ %.0452776.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.epil
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !44
  %i.gz = add i64 %i.gy, %.0452776.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u
  %.0452.lcssa = phi i64 [ 0, %bb.u ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ], [ %i.gz, %.lr.ph.epil ]
  %i.ha = add i64 %.0452.lcssa, %i.gd             ; 4 uses
  %i.hb = sub nsw i64 0, %i.ha                    ; 3 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.gd
  %i.hd = load i16, ptr %.2520, align 2, !tbaa !48
  %i.he = zext i16 %i.hd to i32
  %reass.sub = sub nsw i32 %i.he, %i.fz
  %i.hf = add nsw i32 %reass.sub, 1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw nsw i64 %i.hg, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1554, ptr align 8 %i.hc, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !45, !range !11, !noundef !12
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.v, label %.thread653

bb.v:                                             ; preds = %._crit_edge
  %i.hl = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = xor i1 %i.ho, true
  %i.hq = select i1 %i.hm, i1 true, i1 %i.hp
  %i.hr = icmp ne i16 %i.fg, 0
  %or.cond.i = and i1 %i.hr, %i.hq
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread653, !prof !50

.lr.ph.i:                                         ; preds = %bb.v
  %i.hs = add nuw nsw i32 %i.ft, 1
  %i.ht = load i16, ptr %.2526, align 2, !tbaa !48
  %i.hu = zext i16 %i.ht to i32                   ; 2 uses
  %i.hv = add nuw nsw i32 %i.hs, %i.hu
  %i.hw = add nuw nsw i32 %i.hu, 1
  %i.hx = add nsw i32 %i.g, -1
  %i.hy = zext nneg i32 %i.hw to i64
  %zext = zext nneg i32 %i.hv to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hz = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.hz, label %.thread653, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.hy, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %indvars.iv.i
  %i.ib = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hx, ptr noundef %i.ia, ptr noundef nonnull %.2529, ptr noundef nonnull %.2537)
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.y, label %bb.w

.thread653:                                       ; preds = %bb.w, %._crit_edge, %bb.t, %bb.v
  %.0490651 = phi i64 [ %i.hb, %._crit_edge ], [ 0, %bb.t ], [ %i.hb, %bb.v ], [ %i.hb, %bb.w ]
  %.0504649 = phi i64 [ %i.ha, %._crit_edge ], [ 0, %bb.t ], [ %i.ha, %bb.v ], [ %i.ha, %bb.w ]
  %i.id = sub i16 %i.cu, %i.fg
  %.pre = load i16, ptr %.2523, align 2, !tbaa !48 ; 2 uses
  %.pre821 = zext i16 %.pre to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ie = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.if = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ig = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ie, i64 noundef %i.if, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.ih = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ii = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ij = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 849, i64 noundef %i.ih, i64 noundef %i.ii, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.z:                                             ; preds = %.thread653, %bb.q
  %.pre-phi = phi i32 [ %.pre821, %.thread653 ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ik = phi i16 [ %.pre, %.thread653 ], [ %i.cx, %bb.q ]
  %.1505 = phi i64 [ %.0504649, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1491 = phi i64 [ %.0490651, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1469 = phi i32 [ 2, %.thread653 ], [ 0, %bb.q ] ; 5 uses
  %.1 = phi i16 [ %i.id, %.thread653 ], [ %i.cu, %bb.q ] ; 3 uses
  %i.il = and i32 %i.dh, 65535                    ; 7 uses
  %i.im = icmp samesign ugt i32 %i.il, %.pre-phi
  br i1 %i.im, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.in = sub nuw nsw i32 %i.il, %.pre-phi        ; 7 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !39 ; 2 uses
  %i.iq = zext nneg i32 %i.in to i64              ; 6 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.is
  %i.iu = load i64, ptr %i.ip, align 8, !tbaa !19
  %i.iv = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !40
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !41
  %i.ja = zext i16 %i.ik to i64
  %i.jb = mul i64 %i.iz, %i.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.iv, i64 %i.jb, i1 false)
  %i.jc = load ptr, ptr %i.io, align 8, !tbaa !39 ; 2 uses
  %i.jd = add nsw i32 %i.in, -1
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.je
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !19
  %i.jh = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !34
  %i.jk = zext i32 %4 to i64                      ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !19
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jm
  %i.jo = load ptr, ptr %i.iw, align 8, !tbaa !40
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 1 %i.jn, i64 %i.jq, i1 false)
  %i.jr = icmp samesign ugt i32 %i.in, 1
  br i1 %i.jr, label %bb.ab, label %._crit_edge823

._crit_edge823:                                   ; preds = %bb.aa
  %.pre824 = zext i16 %.1 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.js = load ptr, ptr %i.io, align 8, !tbaa !39 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.jt
  %i.jv = zext i16 %.1 to i32                     ; 2 uses
  %i.jw = add nuw nsw i32 %i.jv, 1
  %i.jx = sub nsw i32 %i.jw, %i.in
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !19
  %i.kb = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.ka
  %i.kc = load ptr, ptr %i.iw, align 8, !tbaa !40
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !41
  %i.kf = mul i64 %i.ke, %i.je
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.kb, i64 %i.kf, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge823, %bb.ab
  %.pre-phi825 = phi i32 [ %.pre824, %._crit_edge823 ], [ %i.jv, %bb.ab ]
  %i.kg = load ptr, ptr %i.ji, align 8, !tbaa !34
  %i.kh = load ptr, ptr %i.io, align 8, !tbaa !39 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.jk
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !19
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kj
  %i.kl = sub nsw i32 %.pre-phi825, %i.in         ; 3 uses
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !19
  %i.kp = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.ko
  %i.kq = load ptr, ptr %i.iw, align 8, !tbaa !40
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kk, ptr align 1 %i.kp, i64 %i.ks, i1 false)
  br i1 %i.h, label %bb.ad, label %.thread670

bb.ad:                                            ; preds = %bb.ac
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %i.iq
  %i.ku = load i16, ptr %.2523, align 2, !tbaa !48
  %i.kv = zext i16 %i.ku to i64
  %i.kw = mul nuw nsw i64 %i.kv, 24
  %i.kx = add nuw nsw i64 %i.kw, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kt, ptr noundef nonnull align 8 dereferenceable(1) %.1556, i64 %i.kx, i1 false)
  %i.ky = add nsw i32 %i.kl, 1
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.kz
  %i.lb = mul nuw nsw i64 %i.iq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1556, ptr align 8 %i.la, i64 %i.lb, i1 false)
  %.not796 = icmp eq i32 %i.il, %.pre-phi
  br i1 %.not796, label %._crit_edge782, label %.lr.ph781.preheader

.lr.ph781.preheader:                              ; preds = %bb.ad
  %xtraiter855 = and i64 %i.iq, 3                 ; 3 uses
  %i.lc = icmp samesign ult i32 %i.in, 4
  br i1 %i.lc, label %.lr.ph781.epil.preheader, label %.lr.ph781.preheader.new

.lr.ph781.preheader.new:                          ; preds = %.lr.ph781.preheader
  %unroll_iter860 = and i64 %i.iq, 65532
  br label %.lr.ph781

.lr.ph781:                                        ; preds = %.lr.ph781, %.lr.ph781.preheader.new
  %indvars.iv803 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %indvars.iv.next804.3, %.lr.ph781 ] ; 5 uses
  %.0450778 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %i.ls, %.lr.ph781 ]
  %niter861 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %niter861.next.3, %.lr.ph781 ]
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !44
  %i.lg = add i64 %i.lf, %.0450778
  %i.lh = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !44
  %i.lk = add i64 %i.lj, %i.lg
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !44
  %i.lo = add i64 %i.ln, %i.lk
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 88
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !44
  %i.ls = add i64 %i.lr, %i.lo                    ; 3 uses
  %indvars.iv.next804.3 = add nuw nsw i64 %indvars.iv803, 4 ; 2 uses
  %niter861.next.3 = add i64 %niter861, 4         ; 2 uses
  %niter861.ncmp.3 = icmp eq i64 %niter861.next.3, %unroll_iter860
  br i1 %niter861.ncmp.3, label %._crit_edge782.loopexit.unr-lcssa, label %.lr.ph781, !llvm.loop !85

._crit_edge782.loopexit.unr-lcssa:                ; preds = %.lr.ph781
  %lcmp.mod857.not = icmp eq i64 %xtraiter855, 0
  br i1 %lcmp.mod857.not, label %._crit_edge782, label %.lr.ph781.epil.preheader

.lr.ph781.epil.preheader:                         ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.preheader
  %indvars.iv803.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %indvars.iv.next804.3, %._crit_edge782.loopexit.unr-lcssa ]
  %.0450778.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %i.ls, %._crit_edge782.loopexit.unr-lcssa ]
  %lcmp.mod859 = icmp ne i64 %xtraiter855, 0
  tail call void @llvm.assume(i1 %lcmp.mod859)
  br label %.lr.ph781.epil

.lr.ph781.epil:                                   ; preds = %.lr.ph781.epil, %.lr.ph781.epil.preheader
  %indvars.iv803.epil = phi i64 [ %indvars.iv.next804.epil, %.lr.ph781.epil ], [ %indvars.iv803.epil.init, %.lr.ph781.epil.preheader ] ; 2 uses
  %.0450778.epil = phi i64 [ %i.lw, %.lr.ph781.epil ], [ %.0450778.epil.init, %.lr.ph781.epil.preheader ]
  %epil.iter856 = phi i64 [ %epil.iter856.next, %.lr.ph781.epil ], [ 0, %.lr.ph781.epil.preheader ]
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803.epil
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !44
  %i.lw = add i64 %i.lv, %.0450778.epil           ; 2 uses
  %indvars.iv.next804.epil = add nuw nsw i64 %indvars.iv803.epil, 1
  %epil.iter856.next = add i64 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i64 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %._crit_edge782, label %.lr.ph781.epil, !llvm.loop !86

._crit_edge782:                                   ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.epil, %bb.ad
  %.0450.lcssa = phi i64 [ 0, %bb.ad ], [ %i.ls, %._crit_edge782.loopexit.unr-lcssa ], [ %i.lw, %.lr.ph781.epil ]
  %i.lx = add i64 %.0450.lcssa, %i.iq             ; 4 uses
  %i.ly = sub nsw i64 %.1491, %i.lx               ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !45, !range !11, !noundef !12
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.ae, label %.thread670

bb.ae:                                            ; preds = %._crit_edge782
  %i.mc = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.md = trunc nuw i8 %i.mc to i1
  %i.me = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.mf = trunc nuw i8 %i.me to i1
  %i.mg = xor i1 %i.mf, true
  %i.mh = select i1 %i.md, i1 true, i1 %i.mg
  br i1 %i.mh, label %.lr.ph.i589, label %.thread670, !prof !50

.lr.ph.i589:                                      ; preds = %bb.ae
  %i.mi = add nsw i32 %i.g, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i590, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i591 to i32
  %exitcond808 = icmp eq i32 %i.in, %lftr.wideiv
  br i1 %exitcond808, label %.thread670, label %bb.ag, !llvm.loop !0

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i589
  %indvars.iv.i590 = phi i64 [ 0, %.lr.ph.i589 ], [ %indvars.iv.next.i591, %bb.af ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv.i590
  %i.mk = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.mi, ptr noundef nonnull %i.mj, ptr noundef nonnull %.2529, ptr noundef nonnull %.2533)
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %bb.ah, label %bb.af

.thread670:                                       ; preds = %bb.af, %._crit_edge782, %bb.ac, %bb.ae
  %.2492668 = phi i64 [ %i.ly, %._crit_edge782 ], [ %.1491, %bb.ac ], [ %i.ly, %bb.ae ], [ %i.ly, %bb.af ]
  %.0499666 = phi i64 [ %i.lx, %._crit_edge782 ], [ 0, %bb.ac ], [ %i.lx, %bb.ae ], [ %i.lx, %bb.af ]
  %i.mm = trunc i32 %i.kl to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mn = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mo = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.mp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.mn, i64 noundef %i.mo, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.mq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mr = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ms = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 910, i64 noundef %i.mq, i64 noundef %i.mr, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ai:                                            ; preds = %.thread670, %bb.z
  %.1500 = phi i64 [ %.0499666, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3493 = phi i64 [ %.2492668, %.thread670 ], [ %.1491, %bb.z ] ; 3 uses
  %.1479 = phi i32 [ 2, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3471 = phi i32 [ 2, %.thread670 ], [ %.1469, %bb.z ] ; 2 uses
  %.3 = phi i16 [ %i.mm, %.thread670 ], [ %.1, %bb.z ] ; 3 uses
  %i.mt = load i16, ptr %.2526, align 2, !tbaa !48
  %i.mu = zext i16 %i.mt to i32                   ; 3 uses
  %i.mv = icmp samesign ult i32 %i.df, %i.mu
  br i1 %i.mv, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.mw = sub nuw nsw i32 %i.mu, %i.df            ; 6 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.mz = zext nneg i32 %i.mw to i64              ; 6 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mz
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !19
  %i.nc = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.nb
  %i.nd = load i64, ptr %i.my, align 8, !tbaa !19
  %i.ne = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !40
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !41
  %i.nj = zext i16 %.3 to i64                     ; 2 uses
  %i.nk = mul i64 %i.ni, %i.nj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.nc, ptr align 1 %i.ne, i64 %i.nk, i1 false)
  %i.nl = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.nm = add nsw i32 %i.mw, -1
  %i.nn = zext i32 %i.nm to i64                   ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !34
  %i.nt = add i32 %4, -1
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !19
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nw
  %i.ny = load ptr, ptr %i.nf, align 8, !tbaa !40
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nq, ptr align 1 %i.nx, i64 %i.oa, i1 false)
  %i.ob = icmp samesign ugt i32 %i.mw, 1
  br i1 %i.ob, label %bb.ak, label %._crit_edge822

._crit_edge822:                                   ; preds = %bb.aj
  %.pre826 = zext nneg i32 %i.df to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.oc = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !19
  %i.oe = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.od
  %i.of = zext nneg i32 %i.df to i64              ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !19
  %i.oj = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.oi
  %i.ok = load ptr, ptr %i.nf, align 8, !tbaa !40
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !41
  %i.on = mul i64 %i.om, %i.nn
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.oe, ptr align 1 %i.oj, i64 %i.on, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge822, %bb.ak
  %.pre-phi827 = phi i64 [ %.pre826, %._crit_edge822 ], [ %i.of, %bb.ak ] ; 2 uses
  %i.oo = load ptr, ptr %i.nr, align 8, !tbaa !34
  %i.op = load ptr, ptr %i.mx, align 8, !tbaa !39 ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.nu
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !19
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %.pre-phi827
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !19
  %i.ov = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.ou
  %i.ow = load ptr, ptr %i.nf, align 8, !tbaa !40
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.ov, i64 %i.oy, i1 false)
  br i1 %i.h, label %bb.am, label %.thread688

bb.am:                                            ; preds = %bb.al
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.mz
  %i.pa = mul nuw nsw i64 %i.nj, 24
  %i.pb = add nuw nsw i64 %i.pa, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oz, ptr noundef nonnull align 8 dereferenceable(1) %.1554, i64 %i.pb, i1 false)
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %.pre-phi827
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.pe = mul nuw nsw i64 %i.mz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1554, ptr nonnull align 8 %i.pd, i64 %i.pe, i1 false)
  %.not797 = icmp eq i32 %i.df, %i.mu
  br i1 %.not797, label %._crit_edge788, label %.lr.ph787.preheader

.lr.ph787.preheader:                              ; preds = %bb.am
  %xtraiter862 = and i64 %i.mz, 3                 ; 3 uses
  %i.pf = icmp samesign ult i32 %i.mw, 4
  br i1 %i.pf, label %.lr.ph787.epil.preheader, label %.lr.ph787.preheader.new

.lr.ph787.preheader.new:                          ; preds = %.lr.ph787.preheader
  %unroll_iter867 = and i64 %i.mz, 65532
  br label %.lr.ph787

.lr.ph787:                                        ; preds = %.lr.ph787, %.lr.ph787.preheader.new
  %indvars.iv809 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %indvars.iv.next810.3, %.lr.ph787 ] ; 5 uses
  %.0448784 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %i.pv, %.lr.ph787 ]
  %niter868 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %niter868.next.3, %.lr.ph787 ]
  %i.pg = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !44
  %i.pj = add i64 %i.pi, %.0448784
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !44
  %i.pn = add i64 %i.pm, %i.pj
  %i.po = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !44
  %i.pr = add i64 %i.pq, %i.pn
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 88
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !44
  %i.pv = add i64 %i.pu, %i.pr                    ; 3 uses
  %indvars.iv.next810.3 = add nuw nsw i64 %indvars.iv809, 4 ; 2 uses
  %niter868.next.3 = add i64 %niter868, 4         ; 2 uses
  %niter868.ncmp.3 = icmp eq i64 %niter868.next.3, %unroll_iter867
  br i1 %niter868.ncmp.3, label %._crit_edge788.loopexit.unr-lcssa, label %.lr.ph787, !llvm.loop !87

._crit_edge788.loopexit.unr-lcssa:                ; preds = %.lr.ph787
  %lcmp.mod864.not = icmp eq i64 %xtraiter862, 0
  br i1 %lcmp.mod864.not, label %._crit_edge788, label %.lr.ph787.epil.preheader

.lr.ph787.epil.preheader:                         ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.preheader
  %indvars.iv809.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %indvars.iv.next810.3, %._crit_edge788.loopexit.unr-lcssa ]
  %.0448784.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %i.pv, %._crit_edge788.loopexit.unr-lcssa ]
  %lcmp.mod866 = icmp ne i64 %xtraiter862, 0
  tail call void @llvm.assume(i1 %lcmp.mod866)
  br label %.lr.ph787.epil

.lr.ph787.epil:                                   ; preds = %.lr.ph787.epil, %.lr.ph787.epil.preheader
  %indvars.iv809.epil = phi i64 [ %indvars.iv.next810.epil, %.lr.ph787.epil ], [ %indvars.iv809.epil.init, %.lr.ph787.epil.preheader ] ; 2 uses
  %.0448784.epil = phi i64 [ %i.pz, %.lr.ph787.epil ], [ %.0448784.epil.init, %.lr.ph787.epil.preheader ]
  %epil.iter863 = phi i64 [ %epil.iter863.next, %.lr.ph787.epil ], [ 0, %.lr.ph787.epil.preheader ]
  %i.pw = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809.epil
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !44
  %i.pz = add i64 %i.py, %.0448784.epil           ; 2 uses
  %indvars.iv.next810.epil = add nuw nsw i64 %indvars.iv809.epil, 1
  %epil.iter863.next = add i64 %epil.iter863, 1   ; 2 uses
  %epil.iter863.cmp.not = icmp eq i64 %epil.iter863.next, %xtraiter862
  br i1 %epil.iter863.cmp.not, label %._crit_edge788, label %.lr.ph787.epil, !llvm.loop !88

._crit_edge788:                                   ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.epil, %bb.am
  %.0448.lcssa = phi i64 [ 0, %bb.am ], [ %i.pv, %._crit_edge788.loopexit.unr-lcssa ], [ %i.pz, %.lr.ph787.epil ]
  %i.qa = add i64 %.0448.lcssa, %i.mz             ; 2 uses
  %i.qb = sub nsw i64 %.1505, %i.qa               ; 3 uses
  %i.qc = add nsw i64 %i.qa, %.3493               ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qe = load i8, ptr %i.qd, align 8, !tbaa !45, !range !11, !noundef !12
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.an, label %.thread688

bb.an:                                            ; preds = %._crit_edge788
  %i.qg = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = xor i1 %i.qj, true
  %i.ql = select i1 %i.qh, i1 true, i1 %i.qk
  br i1 %i.ql, label %.lr.ph.i597, label %.thread688, !prof !50

.lr.ph.i597:                                      ; preds = %bb.an
  %i.qm = add nsw i32 %i.g, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i599 = add nuw nsw i64 %indvars.iv.i598, 1 ; 2 uses
  %lftr.wideiv814 = trunc i64 %indvars.iv.next.i599 to i32
  %exitcond815 = icmp eq i32 %i.mw, %lftr.wideiv814
  br i1 %exitcond815, label %.thread688, label %bb.ap, !llvm.loop !0

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i597
  %indvars.iv.i598 = phi i64 [ 0, %.lr.ph.i597 ], [ %indvars.iv.next.i599, %bb.ao ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.i598
  %i.qo = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.qm, ptr noundef nonnull %i.qn, ptr noundef nonnull %.2537, ptr noundef nonnull %.2529)
  %i.qp = icmp slt i32 %i.qo, 0
  br i1 %i.qp, label %bb.aq, label %bb.ao

.thread688:                                       ; preds = %bb.ao, %._crit_edge788, %bb.al, %bb.an
  %.4494686 = phi i64 [ %i.qc, %._crit_edge788 ], [ %.3493, %bb.al ], [ %i.qc, %bb.an ], [ %i.qc, %bb.ao ]
  %.2506684 = phi i64 [ %i.qb, %._crit_edge788 ], [ %.1505, %bb.al ], [ %i.qb, %bb.an ], [ %i.qb, %bb.ao ]
  %i.qq = trunc nuw i32 %i.mw to i16
  %i.qr = add i16 %.3, %i.qq
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qs = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qt = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.qs, i64 noundef %i.qt, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.qv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qw = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 968, i64 noundef %i.qv, i64 noundef %i.qw, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ar:                                            ; preds = %.thread688, %bb.ai
  %.3507 = phi i64 [ %.2506684, %.thread688 ], [ %.1505, %bb.ai ]
  %.5495 = phi i64 [ %.4494686, %.thread688 ], [ %.3493, %bb.ai ] ; 3 uses
  %.3487 = phi i32 [ 2, %.thread688 ], [ %.1469, %bb.ai ] ; 2 uses
  %.5473 = phi i32 [ 2, %.thread688 ], [ %.3471, %bb.ai ] ; 2 uses
  %.5 = phi i16 [ %i.qr, %.thread688 ], [ %.3, %bb.ai ] ; 2 uses
  %i.qy = load i16, ptr %.2523, align 2, !tbaa !48
  %i.qz = zext i16 %i.qy to i32                   ; 2 uses
  %i.ra = icmp samesign ult i32 %i.il, %i.qz
  br i1 %i.ra, label %bb.as, label %..thread706_crit_edge

..thread706_crit_edge:                            ; preds = %bb.ar
  %.pre828 = zext i32 %4 to i64
  br label %.thread706

bb.as:                                            ; preds = %bb.ar
  %i.rb = sub nuw nsw i32 %i.qz, %i.il            ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !39 ; 2 uses
  %i.re = zext i16 %.5 to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.re
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !19
  %i.rh = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !34
  %i.rk = zext i32 %4 to i64                      ; 6 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %i.rk
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !19
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !40
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rh, ptr align 1 %i.rn, i64 %i.rr, i1 false)
  %i.rs = load ptr, ptr %i.rc, align 8, !tbaa !39 ; 2 uses
  %i.rt = zext i16 %.5 to i32
  %i.ru = add nuw nsw i32 %i.rt, 1                ; 2 uses
  %i.rv = zext nneg i32 %i.ru to i64              ; 3 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !19
  %i.ry = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.rx
  %i.rz = load i64, ptr %i.rs, align 8, !tbaa !19
  %i.sa = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.rz
  %i.sb = load ptr, ptr %i.ro, align 8, !tbaa !40
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !41
  %i.se = add nsw i32 %i.rb, -1
  %i.sf = zext i32 %i.se to i64                   ; 2 uses
  %i.sg = mul i64 %i.sd, %i.sf
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ry, ptr align 1 %i.sa, i64 %i.sg, i1 false)
  %i.sh = load ptr, ptr %i.ri, align 8, !tbaa !34
  %i.si = load ptr, ptr %i.rc, align 8, !tbaa !39 ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.rk
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !19
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sk
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sf
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !19
  %i.so = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.sn
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !40
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sl, ptr align 1 %i.so, i64 %i.sr, i1 false)
  %i.ss = load ptr, ptr %i.rc, align 8, !tbaa !39 ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.st
  %i.sv = zext nneg i32 %i.rb to i64              ; 6 uses
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sv
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !19
  %i.sy = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.sx
  %i.sz = load ptr, ptr %i.ro, align 8, !tbaa !40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !41
  %i.tc = zext nneg i32 %i.il to i64
  %i.td = mul i64 %i.tb, %i.tc
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.su, ptr align 1 %i.sy, i64 %i.td, i1 false)
  br i1 %i.h, label %.lr.ph793.preheader, label %.thread706

.lr.ph793.preheader:                              ; preds = %bb.as
  %i.te = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.rv
  %i.tf = mul nuw nsw i64 %i.sv, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.te, ptr align 8 %.1556, i64 %i.tf, i1 false)
  %xtraiter869 = and i64 %i.sv, 3                 ; 3 uses
  %i.tg = add nsw i32 %i.rb, -1
  %i.th = icmp ult i32 %i.tg, 3
  br i1 %i.th, label %.lr.ph793.epil.preheader, label %.lr.ph793.preheader.new

.lr.ph793.preheader.new:                          ; preds = %.lr.ph793.preheader
  %unroll_iter874 = and i64 %i.sv, 65532
  br label %.lr.ph793

.lr.ph793:                                        ; preds = %.lr.ph793, %.lr.ph793.preheader.new
  %indvars.iv816 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %indvars.iv.next817.3, %.lr.ph793 ] ; 5 uses
  %.0446790 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %i.tx, %.lr.ph793 ]
  %niter875 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %niter875.next.3, %.lr.ph793 ]
  %i.ti = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !44
  %i.tl = add i64 %i.tk, %.0446790
  %i.tm = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !44
  %i.tp = add i64 %i.to, %i.tl
  %i.tq = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 64
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !44
  %i.tt = add i64 %i.ts, %i.tp
  %i.tu = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 88
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !44
  %i.tx = add i64 %i.tw, %i.tt                    ; 3 uses
  %indvars.iv.next817.3 = add nuw nsw i64 %indvars.iv816, 4 ; 2 uses
  %niter875.next.3 = add i64 %niter875, 4         ; 2 uses
  %niter875.ncmp.3 = icmp eq i64 %niter875.next.3, %unroll_iter874
  br i1 %niter875.ncmp.3, label %._crit_edge794.unr-lcssa, label %.lr.ph793, !llvm.loop !89

._crit_edge794.unr-lcssa:                         ; preds = %.lr.ph793
  %lcmp.mod871.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod871.not, label %._crit_edge794, label %.lr.ph793.epil.preheader

.lr.ph793.epil.preheader:                         ; preds = %._crit_edge794.unr-lcssa, %.lr.ph793.preheader
  %indvars.iv816.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %indvars.iv.next817.3, %._crit_edge794.unr-lcssa ]
  %.0446790.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %i.tx, %._crit_edge794.unr-lcssa ]
  %lcmp.mod873 = icmp ne i64 %xtraiter869, 0
  tail call void @llvm.assume(i1 %lcmp.mod873)
  br label %.lr.ph793.epil

.lr.ph793.epil:                                   ; preds = %.lr.ph793.epil, %.lr.ph793.epil.preheader
  %indvars.iv816.epil = phi i64 [ %indvars.iv816.epil.init, %.lr.ph793.epil.preheader ], [ %indvars.iv.next817.epil, %.lr.ph793.epil ] ; 2 uses
  %.0446790.epil = phi i64 [ %.0446790.epil.init, %.lr.ph793.epil.preheader ], [ %i.ub, %.lr.ph793.epil ]
  %epil.iter870 = phi i64 [ 0, %.lr.ph793.epil.preheader ], [ %epil.iter870.next, %.lr.ph793.epil ]
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816.epil
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !44
  %i.ub = add i64 %i.ua, %.0446790.epil           ; 2 uses
  %indvars.iv.next817.epil = add nuw nsw i64 %indvars.iv816.epil, 1
  %epil.iter870.next = add i64 %epil.iter870, 1   ; 2 uses
  %epil.iter870.cmp.not = icmp eq i64 %epil.iter870.next, %xtraiter869
  br i1 %epil.iter870.cmp.not, label %._crit_edge794, label %.lr.ph793.epil, !llvm.loop !90

._crit_edge794:                                   ; preds = %.lr.ph793.epil, %._crit_edge794.unr-lcssa
  %.lcssa = phi i64 [ %i.tx, %._crit_edge794.unr-lcssa ], [ %i.ub, %.lr.ph793.epil ]
  %i.uc = add i64 %.lcssa, %i.sv                  ; 2 uses
  %i.ud = sub nsw i64 %.1500, %i.uc               ; 3 uses
  %i.ue = add nsw i64 %i.uc, %.5495               ; 3 uses
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %i.sv
  %i.ug = mul nuw nsw i32 %i.il, 24
  %narrow = add nuw nsw i32 %i.ug, 24
  %i.uh = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1556, ptr noundef nonnull align 8 dereferenceable(1) %i.uf, i64 %i.uh, i1 false)
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.uj = load i8, ptr %i.ui, align 8, !tbaa !45, !range !11, !noundef !12
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.at, label %.thread706

bb.at:                                            ; preds = %._crit_edge794
  %i.ul = add nuw nsw i32 %i.ru, %i.rb
  %i.um = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.up = trunc nuw i8 %i.uo to i1
  %i.uq = xor i1 %i.up, true
  %i.ur = select i1 %i.un, i1 true, i1 %i.uq
  br i1 %i.ur, label %.lr.ph.i605, label %.thread706, !prof !50

.lr.ph.i605:                                      ; preds = %bb.at
  %i.us = add nsw i32 %i.g, -1
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next.i607 = add nuw nsw i64 %indvars.iv.i606, 1 ; 2 uses
  %lftr.wideiv.i608 = trunc i64 %indvars.iv.next.i607 to i32
  %exitcond.not.i609 = icmp eq i32 %i.ul, %lftr.wideiv.i608
  br i1 %exitcond.not.i609, label %.thread706, label %bb.av, !llvm.loop !0

bb.av:                                            ; preds = %bb.au, %.lr.ph.i605
end_hunk_0
