Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jquant2-12?download=true
inline.NumInlined: 9
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@fill_inverse_cmap:bb.a

bb.t:                                             ; preds = %bb.s, %.lr.ph188.i.1
  %.1158.i.1 = phi i32 [ %i.dq, %bb.s ], [ %.1158.i, %.lr.ph188.i.1 ] ; 3 uses
  %indvars.iv.next192.i.1 = add nuw nsw i64 %indvars.iv191.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %find_nearby_colors.exit.loopexit.unr-lcssa, label %.lr.ph188.i, !llvm.loop !135

find_nearby_colors.exit.loopexit.unr-lcssa:       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %find_nearby_colors.exit, label %.lr.ph188.i.epil.preheader

.lr.ph188.i.epil.preheader:                       ; preds = %find_nearby_colors.exit.loopexit.unr-lcssa, %.lr.ph188.i.preheader
  %indvars.iv191.i.epil.init = phi i64 [ 0, %.lr.ph188.i.preheader ], [ %indvars.iv.next192.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0157187.i.epil.init = phi i32 [ 0, %.lr.ph188.i.preheader ], [ %.1158.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod103 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv191.i.epil.init
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !77
  %.not.i.epil = icmp sgt i64 %i.du, %spec.select.i
  br i1 %.not.i.epil, label %find_nearby_colors.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph188.i.epil.preheader
  %i.dv = trunc i64 %indvars.iv191.i.epil.init to i16
  %i.dw = add nsw i32 %.0157187.i.epil.init, 1
  %i.dx = sext i32 %.0157187.i.epil.init to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.dx
  store i16 %i.dv, ptr %i.dy, align 2, !tbaa !65
  br label %find_nearby_colors.exit

find_nearby_colors.exit:                          ; preds = %find_nearby_colors.exit.loopexit.unr-lcssa, %bb.u, %.lr.ph188.i.epil.preheader, %bb.a
  %.0157.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1158.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ], [ %i.dw, %bb.u ], [ %.0157187.i.epil.init, %.lr.ph188.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i64> splat (i64 2147483647), ptr %i.a, align 16, !tbaa !77
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i64> splat (i64 2147483647), ptr %i.dz, align 16, !tbaa !77
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i64> splat (i64 2147483647), ptr %i.ea, align 16, !tbaa !77
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x i64> splat (i64 2147483647), ptr %i.eb, align 16, !tbaa !77
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x i64> splat (i64 2147483647), ptr %i.ec, align 16, !tbaa !77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x i64> splat (i64 2147483647), ptr %i.ed, align 16, !tbaa !77
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x i64> splat (i64 2147483647), ptr %i.ee, align 16, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <4 x i64> splat (i64 2147483647), ptr %i.ef, align 16, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <4 x i64> splat (i64 2147483647), ptr %i.eg, align 16, !tbaa !77
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <4 x i64> splat (i64 2147483647), ptr %i.eh, align 16, !tbaa !77
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x i64> splat (i64 2147483647), ptr %i.ei, align 16, !tbaa !77
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <4 x i64> splat (i64 2147483647), ptr %i.ej, align 16, !tbaa !77
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store <4 x i64> splat (i64 2147483647), ptr %i.ek, align 16, !tbaa !77
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store <4 x i64> splat (i64 2147483647), ptr %i.el, align 16, !tbaa !77
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <4 x i64> splat (i64 2147483647), ptr %i.em, align 16, !tbaa !77
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store <4 x i64> splat (i64 2147483647), ptr %i.en, align 16, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  store <4 x i64> splat (i64 2147483647), ptr %i.eo, align 16, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store <4 x i64> splat (i64 2147483647), ptr %i.ep, align 16, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <4 x i64> splat (i64 2147483647), ptr %i.eq, align 16, !tbaa !77
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store <4 x i64> splat (i64 2147483647), ptr %i.er, align 16, !tbaa !77
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store <4 x i64> splat (i64 2147483647), ptr %i.es, align 16, !tbaa !77
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store <4 x i64> splat (i64 2147483647), ptr %i.et, align 16, !tbaa !77
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <4 x i64> splat (i64 2147483647), ptr %i.eu, align 16, !tbaa !77
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x i64> splat (i64 2147483647), ptr %i.ev, align 16, !tbaa !77
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store <4 x i64> splat (i64 2147483647), ptr %i.ew, align 16, !tbaa !77
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  store <4 x i64> splat (i64 2147483647), ptr %i.ex, align 16, !tbaa !77
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store <4 x i64> splat (i64 2147483647), ptr %i.ey, align 16, !tbaa !77
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store <4 x i64> splat (i64 2147483647), ptr %i.ez, align 16, !tbaa !77
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  store <4 x i64> splat (i64 2147483647), ptr %i.fa, align 16, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store <4 x i64> splat (i64 2147483647), ptr %i.fb, align 16, !tbaa !77
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store <4 x i64> splat (i64 2147483647), ptr %i.fc, align 16, !tbaa !77
  store <4 x i64> splat (i64 2147483647), ptr %i.fd, align 16, !tbaa !77
  %i.fe = icmp sgt i32 %.0157.lcssa.i, 0
  br i1 %i.fe, label %.lr.ph.i37, label %find_best_colors.exit

.lr.ph.i37:                                       ; preds = %find_nearby_colors.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !66 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !56
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !52
  %i.fk = zext i32 %i.fj to i64                   ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @rgb_red, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !63
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !63 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !56
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @rgb_green, i64 %i.fk
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !63
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !63 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !56
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @rgb_blue, i64 %i.fk
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !63
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr @c_scales, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !63 ; 3 uses
  %i.ge = shl nsw i32 %i.fp, 7                    ; 3 uses
  %i.gf = shl nsw i32 %i.fp, 8                    ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i32 %i.ge, %i.ge
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nsw i32 %i.fw, 6                    ; 3 uses
  %i.gk = shl nsw i32 %i.fw, 7                    ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = mul nsw i32 %i.gj, %i.gj
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl nsw i32 %i.gd, 7                    ; 3 uses
  %i.gp = shl nsw i32 %i.gd, 8                    ; 2 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = mul nsw i32 %i.go, %i.go
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = mul nsw i32 %i.gp, %i.go
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = mul nsw i32 %i.gk, %i.gj
  %i.gw = sext i32 %i.gv to i64                   ; 6 uses
  %i.gx = mul nsw i32 %i.gf, %i.ge
  %i.gy = sext i32 %i.gx to i64
  %wide.trip.count.i38 = zext nneg i32 %.0157.lcssa.i to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.cb, %.lr.ph.i37
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i41, %bb.cb ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i39
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !65 ; 33 uses
  %i.hb = sext i16 %i.ha to i64                   ; 3 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !65
  %i.he = sext i16 %i.hd to i32
  %i.hf = sub nsw i32 %i.k, %i.he
  %i.hg = mul nsw i32 %i.hf, %i.fp
  %i.hh = sext i32 %i.hg to i64                   ; 3 uses
  %i.hi = mul nsw i64 %i.hh, %i.hh
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hb
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !65
  %i.hl = sext i16 %i.hk to i32
  %i.hm = sub nsw i32 %i.n, %i.hl
  %i.hn = mul nsw i32 %i.hm, %i.fw
  %i.ho = sext i32 %i.hn to i64                   ; 3 uses
  %i.hp = mul nsw i64 %i.ho, %i.ho
  %i.hq = add nuw nsw i64 %i.hp, %i.hi
  %i.hr = getelementptr inbounds [2 x i8], ptr %i.fy, i64 %i.hb
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !65
  %i.ht = sext i16 %i.hs to i32
  %i.hu = sub nsw i32 %i.q, %i.ht
  %i.hv = mul nsw i32 %i.hu, %i.gd
  %i.hw = sext i32 %i.hv to i64                   ; 3 uses
  %i.hx = mul nsw i64 %i.hw, %i.hw
  %i.hy = add nuw nsw i64 %i.hq, %i.hx
  %i.hz = mul nsw i64 %i.hh, %i.gg
  %i.ia = add nsw i64 %i.hz, %i.gi
  %i.ib = mul nsw i64 %i.ho, %i.gl
  %i.ic = add nsw i64 %i.ib, %i.gn                ; 2 uses
  %i.id = mul nsw i64 %i.hw, %i.gq
  %i.ie = add nsw i64 %i.id, %i.gs                ; 9 uses
  %i.if = add nsw i64 %i.ie, %i.gu                ; 9 uses
  %i.ig = add nsw i64 %i.if, %i.gu                ; 8 uses
  %i.ih = add nsw i64 %i.ic, %i.gw                ; 2 uses
  %i.ii = add nsw i64 %i.ih, %i.gw                ; 2 uses
  %i.ij = add nsw i64 %i.ii, %i.gw                ; 2 uses
  %i.ik = add nsw i64 %i.ij, %i.gw                ; 2 uses
  %i.il = add nsw i64 %i.ik, %i.gw                ; 2 uses
  %i.im = add nsw i64 %i.il, %i.gw
  br label %.preheader88.i

.preheader88.i:                                   ; preds = %bb.ca, %bb.v
  %.075106.i = phi i64 [ %i.ia, %bb.v ], [ %i.or, %bb.ca ] ; 2 uses
  %.078105.i = phi i64 [ %i.hy, %bb.v ], [ %i.oq, %bb.ca ] ; 5 uses
  %.079104.i = phi ptr [ %i.d, %bb.v ], [ %i.op, %bb.ca ] ; 33 uses
  %.181103.i = phi ptr [ %i.a, %bb.v ], [ %i.oo, %bb.ca ] ; 34 uses
  %.087102.i = phi i32 [ 3, %bb.v ], [ %i.os, %bb.ca ] ; 2 uses
  %i.in = load i64, ptr %.181103.i, align 8, !tbaa !77
  %i.io = icmp slt i64 %.078105.i, %i.in
  br i1 %i.io, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader88.i
  store i64 %.078105.i, ptr %.181103.i, align 8, !tbaa !77
  store i16 %i.ha, ptr %.079104.i, align 2, !tbaa !65
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader88.i
  %i.ip = add nsw i64 %.078105.i, %i.ie           ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.181103.i, i64 8 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !77
  %i.is = icmp slt i64 %i.ip, %i.ir
  br i1 %i.is, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.it = getelementptr inbounds nuw i8, ptr %.079104.i, i64 2
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.it, align 2, !tbaa !65
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.iu = add nsw i64 %i.ip, %i.if                ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.181103.i, i64 16 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !77
  %i.ix = icmp slt i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.iy = getelementptr inbounds nuw i8, ptr %.079104.i, i64 4
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.iy, align 2, !tbaa !65
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.iz = add nsw i64 %i.iu, %i.ig                ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.181103.i, i64 24 ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !77
  %i.jc = icmp slt i64 %i.iz, %i.jb
  br i1 %i.jc, label %bb.ac, label %.preheader.1.i

bb.ac:                                            ; preds = %bb.ab
  %i.jd = getelementptr inbounds nuw i8, ptr %.079104.i, i64 6
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.jd, align 2, !tbaa !65
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.ac, %bb.ab
  %i.je = getelementptr inbounds nuw i8, ptr %.181103.i, i64 32 ; 2 uses
  %i.jf = add nsw i64 %.078105.i, %i.ic           ; 4 uses
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !77
  %i.jh = icmp slt i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.1.i
  %i.ji = getelementptr inbounds nuw i8, ptr %.079104.i, i64 8
  store i64 %i.jf, ptr %i.je, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.ji, align 2, !tbaa !65
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader.1.i
  %i.jj = add nsw i64 %i.jf, %i.ie                ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.181103.i, i64 40 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !77
  %i.jm = icmp slt i64 %i.jj, %i.jl
  br i1 %i.jm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jn = getelementptr inbounds nuw i8, ptr %.079104.i, i64 10
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.jn, align 2, !tbaa !65
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jo = add nsw i64 %i.jj, %i.if                ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.181103.i, i64 48 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !77
  %i.jr = icmp slt i64 %i.jo, %i.jq
  br i1 %i.jr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.js = getelementptr inbounds nuw i8, ptr %.079104.i, i64 12
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.js, align 2, !tbaa !65
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jt = add nsw i64 %i.jo, %i.ig                ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.181103.i, i64 56 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !77
  %i.jw = icmp slt i64 %i.jt, %i.jv
  br i1 %i.jw, label %bb.aj, label %.preheader.2.i

bb.aj:                                            ; preds = %bb.ai
  %i.jx = getelementptr inbounds nuw i8, ptr %.079104.i, i64 14
  store i64 %i.jt, ptr %i.ju, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.jx, align 2, !tbaa !65
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.aj, %bb.ai
  %i.jy = getelementptr inbounds nuw i8, ptr %.181103.i, i64 64 ; 2 uses
  %i.jz = add nsw i64 %i.jf, %i.ih                ; 4 uses
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !77
  %i.kb = icmp slt i64 %i.jz, %i.ka
  br i1 %i.kb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader.2.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.079104.i, i64 16
  store i64 %i.jz, ptr %i.jy, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.kc, align 2, !tbaa !65
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.preheader.2.i
  %i.kd = add nsw i64 %i.jz, %i.ie                ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.181103.i, i64 72 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !77
  %i.kg = icmp slt i64 %i.kd, %i.kf
  br i1 %i.kg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kh = getelementptr inbounds nuw i8, ptr %.079104.i, i64 18
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.kh, align 2, !tbaa !65
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ki = add nsw i64 %i.kd, %i.if                ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.181103.i, i64 80 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !77
  %i.kl = icmp slt i64 %i.ki, %i.kk
  br i1 %i.kl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.km = getelementptr inbounds nuw i8, ptr %.079104.i, i64 20
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.km, align 2, !tbaa !65
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kn = add nsw i64 %i.ki, %i.ig                ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.181103.i, i64 88 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !77
  %i.kq = icmp slt i64 %i.kn, %i.kp
  br i1 %i.kq, label %bb.aq, label %.preheader.3.i

bb.aq:                                            ; preds = %bb.ap
  %i.kr = getelementptr inbounds nuw i8, ptr %.079104.i, i64 22
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.kr, align 2, !tbaa !65
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.aq, %bb.ap
  %i.ks = getelementptr inbounds nuw i8, ptr %.181103.i, i64 96 ; 2 uses
  %i.kt = add nsw i64 %i.jz, %i.ii                ; 4 uses
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !77
  %i.kv = icmp slt i64 %i.kt, %i.ku
  br i1 %i.kv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.preheader.3.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.079104.i, i64 24
  store i64 %i.kt, ptr %i.ks, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.kw, align 2, !tbaa !65
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.preheader.3.i
  %i.kx = add nsw i64 %i.kt, %i.ie                ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.181103.i, i64 104 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !77
  %i.la = icmp slt i64 %i.kx, %i.kz
  br i1 %i.la, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lb = getelementptr inbounds nuw i8, ptr %.079104.i, i64 26
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.lb, align 2, !tbaa !65
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.lc = add nsw i64 %i.kx, %i.if                ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.181103.i, i64 112 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !77
  %i.lf = icmp slt i64 %i.lc, %i.le
  br i1 %i.lf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.lg = getelementptr inbounds nuw i8, ptr %.079104.i, i64 28
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.lg, align 2, !tbaa !65
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.lh = add nsw i64 %i.lc, %i.ig                ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.181103.i, i64 120 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !77
  %i.lk = icmp slt i64 %i.lh, %i.lj
  br i1 %i.lk, label %bb.ax, label %.preheader.4.i

bb.ax:                                            ; preds = %bb.aw
  %i.ll = getelementptr inbounds nuw i8, ptr %.079104.i, i64 30
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.ll, align 2, !tbaa !65
  br label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.ax, %bb.aw
  %i.lm = getelementptr inbounds nuw i8, ptr %.181103.i, i64 128 ; 2 uses
  %i.ln = add nsw i64 %i.kt, %i.ij                ; 4 uses
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !77
  %i.lp = icmp slt i64 %i.ln, %i.lo
  br i1 %i.lp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.preheader.4.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.079104.i, i64 32
  store i64 %i.ln, ptr %i.lm, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.lq, align 2, !tbaa !65
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader.4.i
  %i.lr = add nsw i64 %i.ln, %i.ie                ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.181103.i, i64 136 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !77
  %i.lu = icmp slt i64 %i.lr, %i.lt
  br i1 %i.lu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.lv = getelementptr inbounds nuw i8, ptr %.079104.i, i64 34
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.lv, align 2, !tbaa !65
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.lw = add nsw i64 %i.lr, %i.if                ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.181103.i, i64 144 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !77
  %i.lz = icmp slt i64 %i.lw, %i.ly
  br i1 %i.lz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ma = getelementptr inbounds nuw i8, ptr %.079104.i, i64 36
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.ma, align 2, !tbaa !65
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.mb = add nsw i64 %i.lw, %i.ig                ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.181103.i, i64 152 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !77
  %i.me = icmp slt i64 %i.mb, %i.md
  br i1 %i.me, label %bb.be, label %.preheader.5.i

bb.be:                                            ; preds = %bb.bd
  %i.mf = getelementptr inbounds nuw i8, ptr %.079104.i, i64 38
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.mf, align 2, !tbaa !65
  br label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.be, %bb.bd
  %i.mg = getelementptr inbounds nuw i8, ptr %.181103.i, i64 160 ; 2 uses
  %i.mh = add nsw i64 %i.ln, %i.ik                ; 4 uses
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !77
  %i.mj = icmp slt i64 %i.mh, %i.mi
  br i1 %i.mj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.preheader.5.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.079104.i, i64 40
  store i64 %i.mh, ptr %i.mg, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.mk, align 2, !tbaa !65
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.preheader.5.i
  %i.ml = add nsw i64 %i.mh, %i.ie                ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.181103.i, i64 168 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !77
  %i.mo = icmp slt i64 %i.ml, %i.mn
  br i1 %i.mo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.mp = getelementptr inbounds nuw i8, ptr %.079104.i, i64 42
  store i64 %i.ml, ptr %i.mm, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.mp, align 2, !tbaa !65
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mq = add nsw i64 %i.ml, %i.if                ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.181103.i, i64 176 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !77
  %i.mt = icmp slt i64 %i.mq, %i.ms
  br i1 %i.mt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mu = getelementptr inbounds nuw i8, ptr %.079104.i, i64 44
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.mu, align 2, !tbaa !65
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mv = add nsw i64 %i.mq, %i.ig                ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.181103.i, i64 184 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !77
  %i.my = icmp slt i64 %i.mv, %i.mx
  br i1 %i.my, label %bb.bl, label %.preheader.6.i

bb.bl:                                            ; preds = %bb.bk
  %i.mz = getelementptr inbounds nuw i8, ptr %.079104.i, i64 46
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.mz, align 2, !tbaa !65
  br label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.bl, %bb.bk
  %i.na = getelementptr inbounds nuw i8, ptr %.181103.i, i64 192 ; 2 uses
  %i.nb = add nsw i64 %i.mh, %i.il                ; 4 uses
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !77
  %i.nd = icmp slt i64 %i.nb, %i.nc
  br i1 %i.nd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.preheader.6.i
  %i.ne = getelementptr inbounds nuw i8, ptr %.079104.i, i64 48
  store i64 %i.nb, ptr %i.na, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.ne, align 2, !tbaa !65
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.preheader.6.i
  %i.nf = add nsw i64 %i.nb, %i.ie                ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.181103.i, i64 200 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !77
  %i.ni = icmp slt i64 %i.nf, %i.nh
  br i1 %i.ni, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.nj = getelementptr inbounds nuw i8, ptr %.079104.i, i64 50
  store i64 %i.nf, ptr %i.ng, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.nj, align 2, !tbaa !65
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.nk = add nsw i64 %i.nf, %i.if                ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.181103.i, i64 208 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !77
  %i.nn = icmp slt i64 %i.nk, %i.nm
  br i1 %i.nn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.no = getelementptr inbounds nuw i8, ptr %.079104.i, i64 52
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.no, align 2, !tbaa !65
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.np = add nsw i64 %i.nk, %i.ig                ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.181103.i, i64 216 ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !77
  %i.ns = icmp slt i64 %i.np, %i.nr
  br i1 %i.ns, label %bb.bs, label %.preheader.7.i

bb.bs:                                            ; preds = %bb.br
  %i.nt = getelementptr inbounds nuw i8, ptr %.079104.i, i64 54
  store i64 %i.np, ptr %i.nq, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.nt, align 2, !tbaa !65
  br label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.bs, %bb.br
  %i.nu = getelementptr inbounds nuw i8, ptr %.181103.i, i64 224 ; 2 uses
  %i.nv = add nsw i64 %i.im, %i.nb                ; 3 uses
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !77
  %i.nx = icmp slt i64 %i.nv, %i.nw
  br i1 %i.nx, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.preheader.7.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.079104.i, i64 56
  store i64 %i.nv, ptr %i.nu, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.ny, align 2, !tbaa !65
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.preheader.7.i
  %i.nz = add nsw i64 %i.nv, %i.ie                ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.181103.i, i64 232 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !77
  %i.oc = icmp slt i64 %i.nz, %i.ob
  br i1 %i.oc, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.od = getelementptr inbounds nuw i8, ptr %.079104.i, i64 58
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.od, align 2, !tbaa !65
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.oe = add nsw i64 %i.nz, %i.if                ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.181103.i, i64 240 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !77
  %i.oh = icmp slt i64 %i.oe, %i.og
  br i1 %i.oh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.oi = getelementptr inbounds nuw i8, ptr %.079104.i, i64 60
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.oi, align 2, !tbaa !65
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.oj = add nsw i64 %i.oe, %i.ig                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.181103.i, i64 248 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !77
  %i.om = icmp slt i64 %i.oj, %i.ol
  br i1 %i.om, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.on = getelementptr inbounds nuw i8, ptr %.079104.i, i64 62
  store i64 %i.oj, ptr %i.ok, align 8, !tbaa !77
  store i16 %i.ha, ptr %i.on, align 2, !tbaa !65
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.oo = getelementptr inbounds nuw i8, ptr %.181103.i, i64 256
  %i.op = getelementptr inbounds nuw i8, ptr %.079104.i, i64 64
  %i.oq = add nsw i64 %.078105.i, %.075106.i
  %i.or = add nsw i64 %.075106.i, %i.gy
  %i.os = add nsw i32 %.087102.i, -1
  %.not.i40 = icmp eq i32 %.087102.i, 0
  br i1 %.not.i40, label %bb.cb, label %.preheader88.i, !llvm.loop !136

bb.cb:                                            ; preds = %bb.ca
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i39, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i38
  br i1 %exitcond.not.i42, label %find_best_colors.exit, label %bb.v, !llvm.loop !137

find_best_colors.exit:                            ; preds = %bb.cb, %find_nearby_colors.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ot = and i32 %1, -4
  %i.ou = sext i32 %i.ot to i64
  %invariant.gep100 = getelementptr [8 x i8], ptr %i.h, i64 %i.ou ; 4 uses
  %i.ov = and i32 %2, -8
  %i.ow = sext i32 %i.ov to i64                   ; 32 uses
  %i.ox = and i32 %3, -4
  %i.oy = sext i32 %i.ox to i64                   ; 4 uses
  %i.oz = load ptr, ptr %invariant.gep100, align 8, !tbaa !56
  %invariant.gep = getelementptr [2 x i8], ptr %i.oz, i64 %i.oy ; 8 uses
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %i.pa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.pb = load <4 x i16>, ptr %i.d, align 16, !tbaa !65
  %i.pc = add <4 x i16> %i.pb, splat (i16 1)
  store <4 x i16> %i.pc, ptr %gep, align 2, !tbaa !65
  %i.pd = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.1 = getelementptr i8, ptr %i.pd, i64 64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.pf = load <4 x i16>, ptr %i.pa, align 8, !tbaa !65
  %i.pg = add <4 x i16> %i.pf, splat (i16 1)
  store <4 x i16> %i.pg, ptr %gep.1, align 2, !tbaa !65
  %i.ph = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.2 = getelementptr i8, ptr %i.ph, i64 128
  %i.pi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.pj = load <4 x i16>, ptr %i.pe, align 16, !tbaa !65
  %i.pk = add <4 x i16> %i.pj, splat (i16 1)
  store <4 x i16> %i.pk, ptr %gep.2, align 2, !tbaa !65
  %i.pl = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.3 = getelementptr i8, ptr %i.pl, i64 192
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.pn = load <4 x i16>, ptr %i.pi, align 8, !tbaa !65
  %i.po = add <4 x i16> %i.pn, splat (i16 1)
  store <4 x i16> %i.po, ptr %gep.3, align 2, !tbaa !65
  %i.pp = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.4 = getelementptr i8, ptr %i.pp, i64 256
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.pr = load <4 x i16>, ptr %i.pm, align 16, !tbaa !65
  %i.ps = add <4 x i16> %i.pr, splat (i16 1)
  store <4 x i16> %i.ps, ptr %gep.4, align 2, !tbaa !65
  %i.pt = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.5 = getelementptr i8, ptr %i.pt, i64 320
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.pv = load <4 x i16>, ptr %i.pq, align 8, !tbaa !65
  %i.pw = add <4 x i16> %i.pv, splat (i16 1)
  store <4 x i16> %i.pw, ptr %gep.5, align 2, !tbaa !65
  %i.px = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.6 = getelementptr i8, ptr %i.px, i64 384
  %i.py = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.pz = load <4 x i16>, ptr %i.pu, align 16, !tbaa !65
  %i.qa = add <4 x i16> %i.pz, splat (i16 1)
  store <4 x i16> %i.qa, ptr %gep.6, align 2, !tbaa !65
  %i.qb = getelementptr [64 x i8], ptr %invariant.gep, i64 %i.ow
  %gep.7 = getelementptr i8, ptr %i.qb, i64 448
  %i.qc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.qd = load <4 x i16>, ptr %i.py, align 8, !tbaa !65
  %i.qe = add <4 x i16> %i.qd, splat (i16 1)
  store <4 x i16> %i.qe, ptr %gep.7, align 2, !tbaa !65
  %gep101.1 = getelementptr i8, ptr %invariant.gep100, i64 8
  %i.qf = load ptr, ptr %gep101.1, align 8, !tbaa !56
  %invariant.gep.1 = getelementptr [2 x i8], ptr %i.qf, i64 %i.oy ; 8 uses
  %gep.1104 = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %i.qg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.qh = load <4 x i16>, ptr %i.qc, align 16, !tbaa !65
  %i.qi = add <4 x i16> %i.qh, splat (i16 1)
  store <4 x i16> %i.qi, ptr %gep.1104, align 2, !tbaa !65
  %i.qj = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.1.1 = getelementptr i8, ptr %i.qj, i64 64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ql = load <4 x i16>, ptr %i.qg, align 8, !tbaa !65
  %i.qm = add <4 x i16> %i.ql, splat (i16 1)
  store <4 x i16> %i.qm, ptr %gep.1.1, align 2, !tbaa !65
  %i.qn = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.2.1 = getelementptr i8, ptr %i.qn, i64 128
  %i.qo = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.qp = load <4 x i16>, ptr %i.qk, align 16, !tbaa !65
  %i.qq = add <4 x i16> %i.qp, splat (i16 1)
  store <4 x i16> %i.qq, ptr %gep.2.1, align 2, !tbaa !65
  %i.qr = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.3.1 = getelementptr i8, ptr %i.qr, i64 192
  %i.qs = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.qt = load <4 x i16>, ptr %i.qo, align 8, !tbaa !65
  %i.qu = add <4 x i16> %i.qt, splat (i16 1)
  store <4 x i16> %i.qu, ptr %gep.3.1, align 2, !tbaa !65
  %i.qv = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.4.1 = getelementptr i8, ptr %i.qv, i64 256
  %i.qw = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.qx = load <4 x i16>, ptr %i.qs, align 16, !tbaa !65
  %i.qy = add <4 x i16> %i.qx, splat (i16 1)
  store <4 x i16> %i.qy, ptr %gep.4.1, align 2, !tbaa !65
  %i.qz = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.5.1 = getelementptr i8, ptr %i.qz, i64 320
  %i.ra = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.rb = load <4 x i16>, ptr %i.qw, align 8, !tbaa !65
  %i.rc = add <4 x i16> %i.rb, splat (i16 1)
  store <4 x i16> %i.rc, ptr %gep.5.1, align 2, !tbaa !65
  %i.rd = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.6.1 = getelementptr i8, ptr %i.rd, i64 384
  %i.re = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.rf = load <4 x i16>, ptr %i.ra, align 16, !tbaa !65
  %i.rg = add <4 x i16> %i.rf, splat (i16 1)
  store <4 x i16> %i.rg, ptr %gep.6.1, align 2, !tbaa !65
  %i.rh = getelementptr [64 x i8], ptr %invariant.gep.1, i64 %i.ow
  %gep.7.1 = getelementptr i8, ptr %i.rh, i64 448
  %i.ri = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.rj = load <4 x i16>, ptr %i.re, align 8, !tbaa !65
  %i.rk = add <4 x i16> %i.rj, splat (i16 1)
  store <4 x i16> %i.rk, ptr %gep.7.1, align 2, !tbaa !65
  %gep101.2 = getelementptr i8, ptr %invariant.gep100, i64 16
  %i.rl = load ptr, ptr %gep101.2, align 8, !tbaa !56
  %invariant.gep.2 = getelementptr [2 x i8], ptr %i.rl, i64 %i.oy ; 8 uses
  %gep.2105 = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %i.rm = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.rn = load <4 x i16>, ptr %i.ri, align 16, !tbaa !65
  %i.ro = add <4 x i16> %i.rn, splat (i16 1)
  store <4 x i16> %i.ro, ptr %gep.2105, align 2, !tbaa !65
  %i.rp = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.1.2 = getelementptr i8, ptr %i.rp, i64 64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.rr = load <4 x i16>, ptr %i.rm, align 8, !tbaa !65
  %i.rs = add <4 x i16> %i.rr, splat (i16 1)
  store <4 x i16> %i.rs, ptr %gep.1.2, align 2, !tbaa !65
  %i.rt = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.2.2 = getelementptr i8, ptr %i.rt, i64 128
  %i.ru = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.rv = load <4 x i16>, ptr %i.rq, align 16, !tbaa !65
  %i.rw = add <4 x i16> %i.rv, splat (i16 1)
  store <4 x i16> %i.rw, ptr %gep.2.2, align 2, !tbaa !65
  %i.rx = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.3.2 = getelementptr i8, ptr %i.rx, i64 192
  %i.ry = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.rz = load <4 x i16>, ptr %i.ru, align 8, !tbaa !65
  %i.sa = add <4 x i16> %i.rz, splat (i16 1)
  store <4 x i16> %i.sa, ptr %gep.3.2, align 2, !tbaa !65
  %i.sb = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.4.2 = getelementptr i8, ptr %i.sb, i64 256
  %i.sc = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.sd = load <4 x i16>, ptr %i.ry, align 16, !tbaa !65
  %i.se = add <4 x i16> %i.sd, splat (i16 1)
  store <4 x i16> %i.se, ptr %gep.4.2, align 2, !tbaa !65
  %i.sf = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.5.2 = getelementptr i8, ptr %i.sf, i64 320
  %i.sg = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.sh = load <4 x i16>, ptr %i.sc, align 8, !tbaa !65
  %i.si = add <4 x i16> %i.sh, splat (i16 1)
  store <4 x i16> %i.si, ptr %gep.5.2, align 2, !tbaa !65
  %i.sj = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.6.2 = getelementptr i8, ptr %i.sj, i64 384
  %i.sk = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.sl = load <4 x i16>, ptr %i.sg, align 16, !tbaa !65
  %i.sm = add <4 x i16> %i.sl, splat (i16 1)
  store <4 x i16> %i.sm, ptr %gep.6.2, align 2, !tbaa !65
  %i.sn = getelementptr [64 x i8], ptr %invariant.gep.2, i64 %i.ow
  %gep.7.2 = getelementptr i8, ptr %i.sn, i64 448
  %i.so = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.sp = load <4 x i16>, ptr %i.sk, align 8, !tbaa !65
  %i.sq = add <4 x i16> %i.sp, splat (i16 1)
  store <4 x i16> %i.sq, ptr %gep.7.2, align 2, !tbaa !65
  %gep101.3 = getelementptr i8, ptr %invariant.gep100, i64 24
  %i.sr = load ptr, ptr %gep101.3, align 8, !tbaa !56
  %invariant.gep.3 = getelementptr [2 x i8], ptr %i.sr, i64 %i.oy ; 8 uses
  %gep.3106 = getelementptr [64 x i8], ptr %invariant.gep.3, i64 %i.ow
  %i.ss = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.st = load <4 x i16>, ptr %i.so, align 16, !tbaa !65
  %i.su = add <4 x i16> %i.st, splat (i16 1)
  store <4 x i16> %i.su, ptr %gep.3106, align 2, !tbaa !65
  %i.sv = getelementptr [64 x i8], ptr %invariant.gep.3, i64 %i.ow
  %gep.1.3 = getelementptr i8, ptr %i.sv, i64 64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.sx = load <4 x i16>, ptr %i.ss, align 8, !tbaa !65
  %i.sy = add <4 x i16> %i.sx, splat (i16 1)
end_hunk_0
