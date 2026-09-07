Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/output?download=true
inline.NumInlined: 20
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 279
loop-unroll.NumUnrolled: 279
begin_hunk_0_@yuv2rgb4_byte_full_X_c:bb.a
  %i.dz = mul i32 %i.dy, %.0.i.lcssa
  %i.ea = add i32 %i.dx, %i.dz                    ; 3 uses
  %i.eb = load i32, ptr %i.g, align 8, !tbaa !120
  %i.ec = mul i32 %i.eb, %.0.i.lcssa
  %i.ed = add i32 %i.ec, %i.dx
  %i.ee = load i32, ptr %i.h, align 4, !tbaa !121
  %i.ef = mul i32 %i.ee, %.071.i.lcssa
  %i.eg = add i32 %i.ed, %i.ef                    ; 3 uses
  %i.eh = load i32, ptr %i.i, align 16, !tbaa !122
  %i.ei = mul i32 %i.eh, %.071.i.lcssa
  %i.ej = add i32 %i.ei, %i.dx                    ; 3 uses
  %i.ek = or i32 %i.eg, %i.ea
  %i.el = or i32 %i.ek, %i.ej
  %.not.i = icmp ult i32 %i.el, 1073741824
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 1073741823)
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0)
  %i.ep = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 1073741823)
  %i.eq = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %i.er = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 1073741823)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.0228.i = phi i32 [ %i.en, %bb.b ], [ %i.ea, %._crit_edge ] ; 4 uses
  %.0227.i = phi i32 [ %i.ep, %bb.b ], [ %i.eg, %._crit_edge ] ; 4 uses
  %.0226.i = phi i32 [ %i.er, %bb.b ], [ %i.ej, %._crit_edge ] ; 4 uses
  %i.es = load i32, ptr %i.j, align 4, !tbaa !123
  switch i32 %i.es, label %bb.e [
    i32 0, label %bb.d
    i32 5, label %bb.g
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.et = ashr i32 %.0228.i, 29                   ; 3 uses
  %.not.i278.i = icmp ult i32 %i.et, 2
  %isnotneg.inv.i279.i = icmp sgt i32 %i.et, -1
  %i.eu = zext i1 %isnotneg.inv.i279.i to i32
  %.0.i280.i = select i1 %.not.i278.i, i32 %i.et, i32 %i.eu
  %i.ev = ashr i32 %.0227.i, 28
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.ex = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 3)
  %i.ey = lshr i32 %.0226.i, 29
  br label %yuv2rgb_write_full.exit

bb.e:                                             ; preds = %bb.c
  %i.ez = ashr i32 %.0228.i, 22
  %i.fa = ashr i32 %.0227.i, 22
  %i.fb = lshr i32 %.0226.i, 22
  %i.fc = mul nsw i32 %.sroa.0.036, 7
  %i.fd = load ptr, ptr %i.o, align 16, !tbaa !113 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv54 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !114
  %i.fg = add nsw i32 %i.ff, %i.fc
  %i.fh = add nuw nsw i64 %indvars.iv54, 1        ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !114
  %i.fk = mul nsw i32 %i.fj, 5
  %i.fl = add nsw i32 %i.fg, %i.fk
  %i.fm = add nuw nsw i64 %indvars.iv54, 2        ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !114
  %i.fp = mul nsw i32 %i.fo, 3
  %i.fq = add nsw i32 %i.fl, %i.fp
  %i.fr = ashr i32 %i.fq, 4
  %i.fs = add nsw i32 %i.fr, %i.ez                ; 2 uses
  %i.ft = mul nsw i32 %.sroa.6.037, 7
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !113 ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv54 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !114
  %i.fx = add nsw i32 %i.fw, %i.ft
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fh
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !114
  %i.ga = mul nsw i32 %i.fz, 5
  %i.gb = add nsw i32 %i.fx, %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fm
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !114
  %i.ge = mul nsw i32 %i.gd, 3
  %i.gf = add nsw i32 %i.gb, %i.ge
  %i.gg = ashr i32 %i.gf, 4
  %i.gh = add nsw i32 %i.gg, %i.fa                ; 2 uses
  %i.gi = mul nsw i32 %.sroa.10.038, 7
  %i.gj = load ptr, ptr %i.q, align 16, !tbaa !113 ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv54 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !114
  %i.gm = add nsw i32 %i.gl, %i.gi
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.fh
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !114
  %i.gp = mul nsw i32 %i.go, 5
  %i.gq = add nsw i32 %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.fm
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !114
  %i.gt = mul nsw i32 %i.gs, 3
  %i.gu = add nsw i32 %i.gq, %i.gt
  %i.gv = ashr i32 %i.gu, 4
  %i.gw = add nsw i32 %i.gv, %i.fb                ; 2 uses
  store i32 %.sroa.0.036, ptr %i.fe, align 4, !tbaa !114
  store i32 %.sroa.6.037, ptr %i.fv, align 4, !tbaa !114
  store i32 %.sroa.10.038, ptr %i.gk, align 4, !tbaa !114
  %i.gx = ashr i32 %i.gh, 6
  %i.gy = icmp sgt i32 %i.fs, 127                 ; 2 uses
  %.0.i16 = zext i1 %i.gy to i32
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 0)
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 3) ; 2 uses
  %i.hb = icmp sgt i32 %i.gw, 127                 ; 2 uses
  %.0.i12 = zext i1 %i.hb to i32
  %.neg230.i = select i1 %i.gy, i32 -255, i32 0
  %i.hc = add nsw i32 %.neg230.i, %i.fs
  %.neg232.i = mul nsw i32 %i.ha, -85
  %i.hd = add nsw i32 %.neg232.i, %i.gh
  %.neg234.i = select i1 %i.hb, i32 -255, i32 0
  %i.he = add nsw i32 %.neg234.i, %i.gw
  br label %yuv2rgb_write_full.exit

bb.f:                                             ; preds = %bb.c
  %i.hf = ashr i32 %.0228.i, 21
  %i.hg = trunc i64 %indvars.iv54 to i32
  %i.hh = add i32 %i.k, %i.hg
  %i.hi = mul i32 %i.hh, 119
  %i.hj = or i32 %i.hi, -256
  %i.hk = add nsw i32 %i.hj, %i.hf
  %i.hl = ashr i32 %i.hk, 8                       ; 3 uses
  %i.hm = ashr i32 %.0227.i, 19
  %i.hn = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  %i.ho = add i32 %i.l, %i.hn
  %i.hp = mul nsw i32 %i.ho, 119
  %i.hq = or i32 %i.hp, -256
  %i.hr = add nsw i32 %i.hq, %i.hm
  %i.hs = ashr i32 %i.hr, 8
  %i.ht = lshr i32 %.0226.i, 21
  %i.hu = add i32 %i.m, %i.hn
  %i.hv = mul nsw i32 %i.hu, 119
  %i.hw = or i32 %i.hv, -256
  %i.hx = add nsw i32 %i.hw, %i.ht
  %i.hy = ashr i32 %i.hx, 8                       ; 3 uses
  %.not.i260.i = icmp ult i32 %i.hl, 2
  %isnotneg.inv.i261.i = icmp sgt i32 %i.hl, -1
  %i.hz = zext i1 %isnotneg.inv.i261.i to i32
  %.0.i262.i = select i1 %.not.i260.i, i32 %i.hl, i32 %i.hz
  %i.ia = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %i.ib = tail call i32 @llvm.umin.i32(i32 %i.ia, i32 3)
  %.not.i254.i = icmp ult i32 %i.hy, 2
  %isnotneg.inv.i255.i = icmp sgt i32 %i.hy, -1
  %i.ic = zext i1 %isnotneg.inv.i255.i to i32
  %.0.i256.i = select i1 %.not.i254.i, i32 %i.hy, i32 %i.ic
  br label %yuv2rgb_write_full.exit

bb.g:                                             ; preds = %bb.c
  %i.id = ashr i32 %.0228.i, 21
  %i.ie = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.if = xor i32 %i.n, %i.ie
  %i.ig = mul nsw i32 %i.if, 181
  %i.ih = lshr i32 %i.ig, 1
  %i.ii = or i32 %i.ih, -256
  %i.ij = add nsw i32 %i.ii, %i.id
  %i.ik = ashr i32 %i.ij, 8                       ; 3 uses
  %i.il = ashr i32 %.0227.i, 19
  %i.im = trunc i64 %indvars.iv54 to i32
  %i.in = add i32 %i.im, 17
  %i.io = xor i32 %i.in, %i.n
  %i.ip = mul nsw i32 %i.io, 181
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = or i32 %i.iq, -256
  %i.is = add nsw i32 %i.ir, %i.il
  %i.it = ashr i32 %i.is, 8
  %i.iu = lshr i32 %.0226.i, 21
  %i.iv = trunc i64 %indvars.iv54 to i32
  %i.iw = add i32 %i.iv, 34
  %i.ix = xor i32 %i.iw, %i.n
  %i.iy = mul nsw i32 %i.ix, 181
  %i.iz = lshr i32 %i.iy, 1
  %i.ja = or i32 %i.iz, -256
  %i.jb = add nsw i32 %i.ja, %i.iu
  %i.jc = ashr i32 %i.jb, 8                       ; 3 uses
  %.not.i242.i = icmp ult i32 %i.ik, 2
  %isnotneg.inv.i243.i = icmp sgt i32 %i.ik, -1
  %i.jd = zext i1 %isnotneg.inv.i243.i to i32
  %.0.i244.i = select i1 %.not.i242.i, i32 %i.ik, i32 %i.jd
  %i.je = tail call i32 @llvm.smax.i32(i32 %i.it, i32 0)
  %i.jf = tail call i32 @llvm.umin.i32(i32 %i.je, i32 3)
  %.not.i.i = icmp ult i32 %i.jc, 2
  %isnotneg.inv.i.i = icmp sgt i32 %i.jc, -1
  %i.jg = zext i1 %isnotneg.inv.i.i to i32
  %.0.i.i = select i1 %.not.i.i, i32 %i.jc, i32 %i.jg
  br label %yuv2rgb_write_full.exit

yuv2rgb_write_full.exit:                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.1 = phi i32 [ %i.hc, %bb.e ], [ %.sroa.0.036, %bb.d ], [ %.sroa.0.036, %bb.g ], [ %.sroa.0.036, %bb.f ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %i.hd, %bb.e ], [ %.sroa.6.037, %bb.d ], [ %.sroa.6.037, %bb.g ], [ %.sroa.6.037, %bb.f ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %i.he, %bb.e ], [ %.sroa.10.038, %bb.d ], [ %.sroa.10.038, %bb.g ], [ %.sroa.10.038, %bb.f ] ; 2 uses
  %.0225.i = phi i32 [ %.0.i16, %bb.e ], [ %.0.i280.i, %bb.d ], [ %.0.i244.i, %bb.g ], [ %.0.i262.i, %bb.f ]
  %.0224.i = phi i32 [ %i.ha, %bb.e ], [ %i.ex, %bb.d ], [ %i.jf, %bb.g ], [ %i.ib, %bb.f ]
  %.0.i11 = phi i32 [ %.0.i12, %bb.e ], [ %i.ey, %bb.d ], [ %.0.i.i, %bb.g ], [ %.0.i256.i, %bb.f ]
  %i.jh = shl nuw nsw i32 %.0224.i, 1
  %i.ji = shl nsw i32 %.0225.i, 3
  %i.jj = or disjoint i32 %i.jh, %i.ji
  %i.jk = add nsw i32 %i.jj, %.0.i11
  %i.jl = trunc nsw i32 %i.jk to i8
  store i8 %i.jl, ptr %.079.i39, align 1, !tbaa !108
  %i.jm = getelementptr inbounds nuw i8, ptr %.079.i39, i64 1
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %yuv2rgb_full_X_c_template.exit.loopexit, label %.preheader27, !llvm.loop !15

yuv2rgb_full_X_c_template.exit.loopexit:          ; preds = %yuv2rgb_write_full.exit
  %i.jn = zext nneg i32 %10 to i64
  br label %yuv2rgb_full_X_c_template.exit

yuv2rgb_full_X_c_template.exit:                   ; preds = %bb.a, %yuv2rgb_full_X_c_template.exit.loopexit
  %.sroa.0.0.lcssa = phi i32 [ %.sroa.0.1, %yuv2rgb_full_X_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.sroa.6.0.lcssa = phi i32 [ %.sroa.6.1, %yuv2rgb_full_X_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.sroa.10.0.lcssa = phi i32 [ %.sroa.10.1, %yuv2rgb_full_X_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.078.i.lcssa = phi i64 [ %i.jn, %yuv2rgb_full_X_c_template.exit.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.jp = load ptr, ptr %i.jo, align 16, !tbaa !113
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.078.i.lcssa
  store i32 %.sroa.0.0.lcssa, ptr %i.jq, align 4, !tbaa !114
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !113
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %.078.i.lcssa
  store i32 %.sroa.6.0.lcssa, ptr %i.jt, align 4, !tbaa !114
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %i.jv = load ptr, ptr %i.ju, align 16, !tbaa !113
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.078.i.lcssa
  store i32 %.sroa.10.0.lcssa, ptr %i.jw, align 4, !tbaa !114
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2rgb4_byte_full_2_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = load ptr, ptr %2, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = load ptr, ptr %3, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.j = sub nsw i32 4096, %7
  %i.k = sub nsw i32 4096, %8                     ; 2 uses
  %i.l = icmp sgt i32 %6, 0
  br i1 %i.l, label %.lr.ph, label %yuv2rgb_full_2_c_template.exit

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40348
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40352
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40356
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40360
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40364
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40368
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = mul nsw i32 %9, 236                      ; 3 uses
  %i.u = add i32 %i.t, 17
  %i.v = add i32 %i.t, 34
  %i.w = mul nsw i32 %9, 237                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 17 uses
  %.072.i22 = phi ptr [ %5, %.lr.ph ], [ %i.gz, %bb.i ] ; 2 uses
  %.sroa.10.021 = phi i32 [ 0, %.lr.ph ], [ %.sroa.10.1, %bb.i ] ; 5 uses
  %.sroa.6.020 = phi i32 [ 0, %.lr.ph ], [ %.sroa.6.1, %bb.i ] ; 5 uses
  %.sroa.0.019 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.i ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !107
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul nsw i32 %i.j, %i.ac
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !107
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %7, %i.ag
  %i.ai = add nsw i32 %i.ah, %i.ad
  %i.aj = ashr i32 %i.ai, 10
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !107
  %i.am = sext i16 %i.al to i32
  %i.an = mul nsw i32 %i.k, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %8, %i.aq
  %i.as = add i32 %i.an, -67108864
  %i.at = add i32 %i.as, %i.ar
  %i.au = ashr i32 %i.at, 10                      ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !107
  %i.ax = sext i16 %i.aw to i32
  %i.ay = mul nsw i32 %i.k, %i.ax
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !107
  %i.bb = sext i16 %i.ba to i32
  %i.bc = mul nsw i32 %8, %i.bb
  %i.bd = add i32 %i.ay, -67108864
  %i.be = add i32 %i.bd, %i.bc
  %i.bf = ashr i32 %i.be, 10                      ; 2 uses
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !117
  %i.bh = sub nsw i32 %i.aj, %i.bg
  %i.bi = load i32, ptr %i.n, align 16, !tbaa !118
  %i.bj = mul i32 %i.bh, %i.bi
  %i.bk = add i32 %i.bj, 2097152                  ; 3 uses
  %i.bl = load i32, ptr %i.o, align 4, !tbaa !119
  %i.bm = mul i32 %i.bf, %i.bl
  %i.bn = add i32 %i.bm, %i.bk                    ; 3 uses
  %i.bo = load i32, ptr %i.p, align 8, !tbaa !120
  %i.bp = mul i32 %i.bf, %i.bo
  %i.bq = add i32 %i.bp, %i.bk
  %i.br = load i32, ptr %i.q, align 4, !tbaa !121
  %i.bs = mul i32 %i.br, %i.au
  %i.bt = add i32 %i.bq, %i.bs                    ; 3 uses
  %i.bu = load i32, ptr %i.r, align 16, !tbaa !122
  %i.bv = mul i32 %i.bu, %i.au
  %i.bw = add i32 %i.bv, %i.bk                    ; 3 uses
  %i.bx = or i32 %i.bt, %i.bn
  %i.by = or i32 %i.bx, %i.bw
  %.not.i.i = icmp ult i32 %i.by, 1073741824
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 1073741823)
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 1073741823)
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 1073741823)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0228.i.i = phi i32 [ %i.ca, %bb.c ], [ %i.bn, %bb.b ] ; 4 uses
  %.0227.i.i = phi i32 [ %i.cc, %bb.c ], [ %i.bt, %bb.b ] ; 4 uses
  %.0226.i.i = phi i32 [ %i.ce, %bb.c ], [ %i.bw, %bb.b ] ; 4 uses
  %i.cf = load i32, ptr %i.s, align 4, !tbaa !123
  switch i32 %i.cf, label %bb.f [
    i32 0, label %bb.e
    i32 5, label %bb.h
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.cg = ashr i32 %.0228.i.i, 29                 ; 3 uses
  %.not.i278.i.i = icmp ult i32 %i.cg, 2
  %isnotneg.inv.i279.i.i = icmp sgt i32 %i.cg, -1
  %i.ch = zext i1 %isnotneg.inv.i279.i.i to i32
  %.0.i280.i.i = select i1 %.not.i278.i.i, i32 %i.cg, i32 %i.ch
  %i.ci = ashr i32 %.0227.i.i, 28
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cj, i32 3)
  %i.cl = lshr i32 %.0226.i.i, 29
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.cm = ashr i32 %.0228.i.i, 22
  %i.cn = ashr i32 %.0227.i.i, 22
  %i.co = lshr i32 %.0226.i.i, 22
  %i.cp = mul nsw i32 %.sroa.0.019, 7
  %i.cq = load ptr, ptr %i.x, align 16, !tbaa !113 ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !114
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !114
  %i.cx = mul nsw i32 %i.cw, 5
  %i.cy = add nsw i32 %i.ct, %i.cx
  %i.cz = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !114
  %i.dc = mul nsw i32 %i.db, 3
  %i.dd = add nsw i32 %i.cy, %i.dc
  %i.de = ashr i32 %i.dd, 4
  %i.df = add nsw i32 %i.de, %i.cm                ; 2 uses
  %i.dg = mul nsw i32 %.sroa.6.020, 7
  %i.dh = load ptr, ptr %i.y, align 8, !tbaa !113 ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !114
  %i.dk = add nsw i32 %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cu
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !114
  %i.dn = mul nsw i32 %i.dm, 5
  %i.do = add nsw i32 %i.dk, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.cz
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !114
  %i.dr = mul nsw i32 %i.dq, 3
  %i.ds = add nsw i32 %i.do, %i.dr
  %i.dt = ashr i32 %i.ds, 4
  %i.du = add nsw i32 %i.dt, %i.cn                ; 2 uses
  %i.dv = mul nsw i32 %.sroa.10.021, 7
  %i.dw = load ptr, ptr %i.z, align 16, !tbaa !113 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !114
  %i.dz = add nsw i32 %i.dy, %i.dv
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cu
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !114
  %i.ec = mul nsw i32 %i.eb, 5
  %i.ed = add nsw i32 %i.dz, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.cz
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !114
  %i.eg = mul nsw i32 %i.ef, 3
  %i.eh = add nsw i32 %i.ed, %i.eg
  %i.ei = ashr i32 %i.eh, 4
  %i.ej = add nsw i32 %i.ei, %i.co                ; 2 uses
  store i32 %.sroa.0.019, ptr %i.cr, align 4, !tbaa !114
  store i32 %.sroa.6.020, ptr %i.di, align 4, !tbaa !114
  store i32 %.sroa.10.021, ptr %i.dx, align 4, !tbaa !114
  %i.ek = ashr i32 %i.du, 6
  %i.el = icmp sgt i32 %i.df, 127                 ; 2 uses
  %.0.i79.i = zext i1 %i.el to i32
  %i.em = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 0)
  %i.en = tail call i32 @llvm.umin.i32(i32 %i.em, i32 3) ; 2 uses
  %i.eo = icmp sgt i32 %i.ej, 127                 ; 2 uses
  %.0.i75.i = zext i1 %i.eo to i32
  %.neg230.i.i = select i1 %i.el, i32 -255, i32 0
  %i.ep = add nsw i32 %.neg230.i.i, %i.df
  %.neg232.i.i = mul nsw i32 %i.en, -85
  %i.eq = add nsw i32 %.neg232.i.i, %i.du
  %.neg234.i.i = select i1 %i.eo, i32 -255, i32 0
  %i.er = add nsw i32 %.neg234.i.i, %i.ej
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.es = ashr i32 %.0228.i.i, 21
  %i.et = trunc i64 %indvars.iv to i32
  %i.eu = add i32 %i.t, %i.et
  %i.ev = mul i32 %i.eu, 119
  %i.ew = or i32 %i.ev, -256
  %i.ex = add nsw i32 %i.ew, %i.es
  %i.ey = ashr i32 %i.ex, 8                       ; 3 uses
  %i.ez = ashr i32 %.0227.i.i, 19
  %i.fa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fb = add i32 %i.u, %i.fa
  %i.fc = mul nsw i32 %i.fb, 119
  %i.fd = or i32 %i.fc, -256
  %i.fe = add nsw i32 %i.fd, %i.ez
  %i.ff = ashr i32 %i.fe, 8
  %i.fg = lshr i32 %.0226.i.i, 21
  %i.fh = add i32 %i.v, %i.fa
  %i.fi = mul nsw i32 %i.fh, 119
  %i.fj = or i32 %i.fi, -256
  %i.fk = add nsw i32 %i.fj, %i.fg
  %i.fl = ashr i32 %i.fk, 8                       ; 3 uses
  %.not.i260.i.i = icmp ult i32 %i.ey, 2
  %isnotneg.inv.i261.i.i = icmp sgt i32 %i.ey, -1
  %i.fm = zext i1 %isnotneg.inv.i261.i.i to i32
  %.0.i262.i.i = select i1 %.not.i260.i.i, i32 %i.ey, i32 %i.fm
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.ff, i32 0)
  %i.fo = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 3)
  %.not.i254.i.i = icmp ult i32 %i.fl, 2
  %isnotneg.inv.i255.i.i = icmp sgt i32 %i.fl, -1
  %i.fp = zext i1 %isnotneg.inv.i255.i.i to i32
  %.0.i256.i.i = select i1 %.not.i254.i.i, i32 %i.fl, i32 %i.fp
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.fq = ashr i32 %.0228.i.i, 21
  %i.fr = trunc nuw nsw i64 %indvars.iv to i32
  %i.fs = xor i32 %i.w, %i.fr
  %i.ft = mul nsw i32 %i.fs, 181
  %i.fu = lshr i32 %i.ft, 1
  %i.fv = or i32 %i.fu, -256
  %i.fw = add nsw i32 %i.fv, %i.fq
  %i.fx = ashr i32 %i.fw, 8                       ; 3 uses
  %i.fy = ashr i32 %.0227.i.i, 19
  %i.fz = trunc i64 %indvars.iv to i32
  %i.ga = add i32 %i.fz, 17
  %i.gb = xor i32 %i.ga, %i.w
  %i.gc = mul nsw i32 %i.gb, 181
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = or i32 %i.gd, -256
  %i.gf = add nsw i32 %i.ge, %i.fy
  %i.gg = ashr i32 %i.gf, 8
  %i.gh = lshr i32 %.0226.i.i, 21
  %i.gi = trunc i64 %indvars.iv to i32
  %i.gj = add i32 %i.gi, 34
  %i.gk = xor i32 %i.gj, %i.w
  %i.gl = mul nsw i32 %i.gk, 181
  %i.gm = lshr i32 %i.gl, 1
  %i.gn = or i32 %i.gm, -256
  %i.go = add nsw i32 %i.gn, %i.gh
  %i.gp = ashr i32 %i.go, 8                       ; 3 uses
  %.not.i242.i.i = icmp ult i32 %i.fx, 2
  %isnotneg.inv.i243.i.i = icmp sgt i32 %i.fx, -1
  %i.gq = zext i1 %isnotneg.inv.i243.i.i to i32
  %.0.i244.i.i = select i1 %.not.i242.i.i, i32 %i.fx, i32 %i.gq
  %i.gr = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 0)
  %i.gs = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 3)
  %.not.i.i.i = icmp ult i32 %i.gp, 2
  %isnotneg.inv.i.i.i = icmp sgt i32 %i.gp, -1
  %i.gt = zext i1 %isnotneg.inv.i.i.i to i32
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %i.gp, i32 %i.gt
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.1 = phi i32 [ %i.ep, %bb.f ], [ %.sroa.0.019, %bb.e ], [ %.sroa.0.019, %bb.h ], [ %.sroa.0.019, %bb.g ] ; 2 uses
  %.sroa.6.1 = phi i32 [ %i.eq, %bb.f ], [ %.sroa.6.020, %bb.e ], [ %.sroa.6.020, %bb.h ], [ %.sroa.6.020, %bb.g ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %i.er, %bb.f ], [ %.sroa.10.021, %bb.e ], [ %.sroa.10.021, %bb.h ], [ %.sroa.10.021, %bb.g ] ; 2 uses
  %.0225.i.i = phi i32 [ %.0.i79.i, %bb.f ], [ %.0.i280.i.i, %bb.e ], [ %.0.i244.i.i, %bb.h ], [ %.0.i262.i.i, %bb.g ]
  %.0224.i.i = phi i32 [ %i.en, %bb.f ], [ %i.ck, %bb.e ], [ %i.gs, %bb.h ], [ %i.fo, %bb.g ]
  %.0.i74.i = phi i32 [ %.0.i75.i, %bb.f ], [ %i.cl, %bb.e ], [ %.0.i.i.i, %bb.h ], [ %.0.i256.i.i, %bb.g ]
  %i.gu = shl nuw nsw i32 %.0224.i.i, 1
  %i.gv = shl nsw i32 %.0225.i.i, 3
  %i.gw = or disjoint i32 %i.gu, %i.gv
  %i.gx = add nsw i32 %i.gw, %.0.i74.i
  %i.gy = trunc nsw i32 %i.gx to i8
  store i8 %i.gy, ptr %.072.i22, align 1, !tbaa !108
  %i.gz = getelementptr inbounds nuw i8, ptr %.072.i22, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %yuv2rgb_full_2_c_template.exit.loopexit, label %bb.b, !llvm.loop !20

yuv2rgb_full_2_c_template.exit.loopexit:          ; preds = %bb.i
  %i.ha = zext nneg i32 %6 to i64
  br label %yuv2rgb_full_2_c_template.exit

yuv2rgb_full_2_c_template.exit:                   ; preds = %bb.a, %yuv2rgb_full_2_c_template.exit.loopexit
  %.sroa.0.0.lcssa = phi i32 [ %.sroa.0.1, %yuv2rgb_full_2_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.sroa.6.0.lcssa = phi i32 [ %.sroa.6.1, %yuv2rgb_full_2_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.sroa.10.0.lcssa = phi i32 [ %.sroa.10.1, %yuv2rgb_full_2_c_template.exit.loopexit ], [ 0, %bb.a ]
  %.071.i.lcssa = phi i64 [ %i.ha, %yuv2rgb_full_2_c_template.exit.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.hc = load ptr, ptr %i.hb, align 16, !tbaa !113
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.071.i.lcssa
  store i32 %.sroa.0.0.lcssa, ptr %i.hd, align 4, !tbaa !114
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !113
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %.071.i.lcssa
  store i32 %.sroa.6.0.lcssa, ptr %i.hg, align 4, !tbaa !114
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %i.hi = load ptr, ptr %i.hh, align 16, !tbaa !113
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.071.i.lcssa
  store i32 %.sroa.10.0.lcssa, ptr %i.hj, align 4, !tbaa !114
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2rgb4_byte_full_1_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #6 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !111    ; 2 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !111    ; 2 uses
  %i.c = icmp eq i32 %7, 0
  br i1 %i.c, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %6, 0
  br i1 %i.d, label %.lr.ph42, label %yuv2rgb_full_1_c_template.exit

.lr.ph42:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40348
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40352
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40356
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40360
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40364
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40368
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = mul nsw i32 %8, 236                      ; 3 uses
  %i.m = add i32 %i.l, 17
  %i.n = add i32 %i.l, 34
  %i.o = mul nsw i32 %8, 237                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %wide.trip.count53 = zext nneg i32 %6 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph42, %bb.i
  %indvars.iv50 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next51, %bb.i ] ; 14 uses
  %.087.i40 = phi ptr [ %5, %.lr.ph42 ], [ %i.fz, %bb.i ] ; 2 uses
  %.sroa.15.239 = phi i32 [ 0, %.lr.ph42 ], [ %.sroa.15.3, %bb.i ] ; 5 uses
  %.sroa.8.238 = phi i32 [ 0, %.lr.ph42 ], [ %.sroa.8.3, %bb.i ] ; 5 uses
  %.sroa.0.237 = phi i32 [ 0, %.lr.ph42 ], [ %.sroa.0.3, %bb.i ] ; 5 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv50
  %i.t = load i16, ptr %i.s, align 2, !tbaa !107
  %i.u = sext i16 %i.t to i32
  %i.v = shl nsw i32 %i.u, 2
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv50
  %i.x = load i16, ptr %i.w, align 2, !tbaa !107
  %i.y = sext i16 %i.x to i32
  %i.z = shl nsw i32 %i.y, 2
  %i.aa = add nsw i32 %i.z, -65536                ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv50
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.ad, 2
  %i.af = add nsw i32 %i.ae, -65536               ; 2 uses
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !117
  %i.ah = sub nsw i32 %i.v, %i.ag
  %i.ai = load i32, ptr %i.f, align 16, !tbaa !118
  %i.aj = mul i32 %i.ah, %i.ai
  %i.ak = add i32 %i.aj, 2097152                  ; 3 uses
  %i.al = load i32, ptr %i.g, align 4, !tbaa !119
  %i.am = mul i32 %i.af, %i.al
  %i.an = add i32 %i.ak, %i.am                    ; 3 uses
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !120
  %i.ap = mul i32 %i.ao, %i.af
  %i.aq = add i32 %i.ap, %i.ak
  %i.ar = load i32, ptr %i.i, align 4, !tbaa !121
  %i.as = mul i32 %i.ar, %i.aa
  %i.at = add i32 %i.aq, %i.as                    ; 3 uses
  %i.au = load i32, ptr %i.j, align 16, !tbaa !122
  %i.av = mul i32 %i.au, %i.aa
  %i.aw = add i32 %i.av, %i.ak                    ; 3 uses
  %i.ax = or i32 %i.at, %i.an
  %i.ay = or i32 %i.ax, %i.aw
  %.not.i96.i = icmp ult i32 %i.ay, 1073741824
  br i1 %.not.i96.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.az, i32 1073741823)
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 1073741823)
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 0)
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 1073741823)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0228.i106.i = phi i32 [ %i.ba, %bb.c ], [ %i.an, %bb.b ] ; 4 uses
  %.0227.i107.i = phi i32 [ %i.bc, %bb.c ], [ %i.at, %bb.b ] ; 4 uses
  %.0226.i108.i = phi i32 [ %i.be, %bb.c ], [ %i.aw, %bb.b ] ; 4 uses
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !123
  switch i32 %i.bf, label %bb.f [
    i32 0, label %bb.e
    i32 5, label %bb.h
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.bg = ashr i32 %.0228.i106.i, 29              ; 3 uses
  %.not.i278.i158.i = icmp ult i32 %i.bg, 2
  %isnotneg.inv.i279.i159.i = icmp sgt i32 %i.bg, -1
  %i.bh = zext i1 %isnotneg.inv.i279.i159.i to i32
  %.0.i280.i160.i = select i1 %.not.i278.i158.i, i32 %i.bg, i32 %i.bh
  %i.bi = ashr i32 %.0227.i107.i, 28
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 3)
  %i.bl = lshr i32 %.0226.i108.i, 29
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bm = ashr i32 %.0228.i106.i, 22
  %i.bn = ashr i32 %.0227.i107.i, 22
  %i.bo = lshr i32 %.0226.i108.i, 22
  %i.bp = mul nsw i32 %.sroa.0.237, 7
  %i.bq = load ptr, ptr %i.p, align 16, !tbaa !113 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv50 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !114
  %i.bt = add nsw i32 %i.bs, %i.bp
  %i.bu = add nuw nsw i64 %indvars.iv50, 1        ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !114
  %i.bx = mul nsw i32 %i.bw, 5
  %i.by = add nsw i32 %i.bt, %i.bx
  %i.bz = add nuw nsw i64 %indvars.iv50, 2        ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !114
  %i.cc = mul nsw i32 %i.cb, 3
  %i.cd = add nsw i32 %i.by, %i.cc
  %i.ce = ashr i32 %i.cd, 4
  %i.cf = add nsw i32 %i.ce, %i.bm                ; 2 uses
  %i.cg = mul nsw i32 %.sroa.8.238, 7
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !113 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv50 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !114
  %i.ck = add nsw i32 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.bu
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !114
  %i.cn = mul nsw i32 %i.cm, 5
  %i.co = add nsw i32 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.bz
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !114
  %i.cr = mul nsw i32 %i.cq, 3
  %i.cs = add nsw i32 %i.co, %i.cr
  %i.ct = ashr i32 %i.cs, 4
  %i.cu = add nsw i32 %i.ct, %i.bn                ; 2 uses
  %i.cv = mul nsw i32 %.sroa.15.239, 7
  %i.cw = load ptr, ptr %i.r, align 16, !tbaa !113 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv50 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !114
  %i.cz = add nsw i32 %i.cy, %i.cv
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bu
  %i.db = load i32, ptr %i.da, align 4, !tbaa !114
  %i.dc = mul nsw i32 %i.db, 5
  %i.dd = add nsw i32 %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.bz
  %i.df = load i32, ptr %i.de, align 4, !tbaa !114
  %i.dg = mul nsw i32 %i.df, 3
  %i.dh = add nsw i32 %i.dd, %i.dg
  %i.di = ashr i32 %i.dh, 4
  %i.dj = add nsw i32 %i.di, %i.bo                ; 2 uses
  store i32 %.sroa.0.237, ptr %i.br, align 4, !tbaa !114
  store i32 %.sroa.8.238, ptr %i.ci, align 4, !tbaa !114
  store i32 %.sroa.15.239, ptr %i.cx, align 4, !tbaa !114
  %i.dk = ashr i32 %i.cu, 6
  %i.dl = icmp sgt i32 %i.cf, 127                 ; 2 uses
  %.0.i182.i = zext i1 %i.dl to i32
  %i.dm = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 3) ; 2 uses
  %i.do = icmp sgt i32 %i.dj, 127                 ; 2 uses
  %.0.i178.i = zext i1 %i.do to i32
  %.neg230.i168.i = select i1 %i.dl, i32 -255, i32 0
  %i.dp = add nsw i32 %.neg230.i168.i, %i.cf
  %.neg232.i170.i = mul nsw i32 %i.dn, -85
  %i.dq = add nsw i32 %.neg232.i170.i, %i.cu
  %.neg234.i172.i = select i1 %i.do, i32 -255, i32 0
  %i.dr = add nsw i32 %.neg234.i172.i, %i.dj
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.ds = ashr i32 %.0228.i106.i, 21
  %i.dt = trunc i64 %indvars.iv50 to i32
  %i.du = add i32 %i.l, %i.dt
  %i.dv = mul i32 %i.du, 119
  %i.dw = or i32 %i.dv, -256
  %i.dx = add nsw i32 %i.dw, %i.ds
  %i.dy = ashr i32 %i.dx, 8                       ; 3 uses
  %i.dz = ashr i32 %.0227.i107.i, 19
  %i.ea = trunc nuw nsw i64 %indvars.iv50 to i32  ; 2 uses
  %i.eb = add i32 %i.m, %i.ea
  %i.ec = mul nsw i32 %i.eb, 119
  %i.ed = or i32 %i.ec, -256
  %i.ee = add nsw i32 %i.ed, %i.dz
  %i.ef = ashr i32 %i.ee, 8
  %i.eg = lshr i32 %.0226.i108.i, 21
  %i.eh = add i32 %i.n, %i.ea
  %i.ei = mul nsw i32 %i.eh, 119
  %i.ej = or i32 %i.ei, -256
  %i.ek = add nsw i32 %i.ej, %i.eg
  %i.el = ashr i32 %i.ek, 8                       ; 3 uses
  %.not.i260.i122.i = icmp ult i32 %i.dy, 2
  %isnotneg.inv.i261.i123.i = icmp sgt i32 %i.dy, -1
  %i.em = zext i1 %isnotneg.inv.i261.i123.i to i32
  %.0.i262.i124.i = select i1 %.not.i260.i122.i, i32 %i.dy, i32 %i.em
  %i.en = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 0)
  %i.eo = tail call i32 @llvm.umin.i32(i32 %i.en, i32 3)
  %.not.i254.i128.i = icmp ult i32 %i.el, 2
  %isnotneg.inv.i255.i129.i = icmp sgt i32 %i.el, -1
  %i.ep = zext i1 %isnotneg.inv.i255.i129.i to i32
  %.0.i256.i130.i = select i1 %.not.i254.i128.i, i32 %i.el, i32 %i.ep
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.eq = ashr i32 %.0228.i106.i, 21
  %i.er = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.es = xor i32 %i.o, %i.er
  %i.et = mul nsw i32 %i.es, 181
  %i.eu = lshr i32 %i.et, 1
  %i.ev = or i32 %i.eu, -256
  %i.ew = add nsw i32 %i.ev, %i.eq
  %i.ex = ashr i32 %i.ew, 8                       ; 3 uses
  %i.ey = ashr i32 %.0227.i107.i, 19
  %i.ez = trunc i64 %indvars.iv50 to i32
  %i.fa = add i32 %i.ez, 17
  %i.fb = xor i32 %i.fa, %i.o
  %i.fc = mul nsw i32 %i.fb, 181
  %i.fd = lshr i32 %i.fc, 1
  %i.fe = or i32 %i.fd, -256
  %i.ff = add nsw i32 %i.fe, %i.ey
  %i.fg = ashr i32 %i.ff, 8
  %i.fh = lshr i32 %.0226.i108.i, 21
  %i.fi = trunc i64 %indvars.iv50 to i32
  %i.fj = add i32 %i.fi, 34
  %i.fk = xor i32 %i.fj, %i.o
  %i.fl = mul nsw i32 %i.fk, 181
  %i.fm = lshr i32 %i.fl, 1
  %i.fn = or i32 %i.fm, -256
  %i.fo = add nsw i32 %i.fn, %i.fh
  %i.fp = ashr i32 %i.fo, 8                       ; 3 uses
  %.not.i242.i140.i = icmp ult i32 %i.ex, 2
  %isnotneg.inv.i243.i141.i = icmp sgt i32 %i.ex, -1
  %i.fq = zext i1 %isnotneg.inv.i243.i141.i to i32
  %.0.i244.i142.i = select i1 %.not.i242.i140.i, i32 %i.ex, i32 %i.fq
  %i.fr = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 0)
  %i.fs = tail call i32 @llvm.umin.i32(i32 %i.fr, i32 3)
  %.not.i.i146.i = icmp ult i32 %i.fp, 2
  %isnotneg.inv.i.i147.i = icmp sgt i32 %i.fp, -1
  %i.ft = zext i1 %isnotneg.inv.i.i147.i to i32
  %.0.i.i148.i = select i1 %.not.i.i146.i, i32 %i.fp, i32 %i.ft
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.3 = phi i32 [ %i.dp, %bb.f ], [ %.sroa.0.237, %bb.e ], [ %.sroa.0.237, %bb.h ], [ %.sroa.0.237, %bb.g ] ; 2 uses
  %.sroa.8.3 = phi i32 [ %i.dq, %bb.f ], [ %.sroa.8.238, %bb.e ], [ %.sroa.8.238, %bb.h ], [ %.sroa.8.238, %bb.g ] ; 2 uses
  %.sroa.15.3 = phi i32 [ %i.dr, %bb.f ], [ %.sroa.15.239, %bb.e ], [ %.sroa.15.239, %bb.h ], [ %.sroa.15.239, %bb.g ] ; 2 uses
  %.0225.i119.i = phi i32 [ %.0.i182.i, %bb.f ], [ %.0.i280.i160.i, %bb.e ], [ %.0.i244.i142.i, %bb.h ], [ %.0.i262.i124.i, %bb.g ]
  %.0224.i120.i = phi i32 [ %i.dn, %bb.f ], [ %i.bk, %bb.e ], [ %i.fs, %bb.h ], [ %i.eo, %bb.g ]
  %.0.i121.i = phi i32 [ %.0.i178.i, %bb.f ], [ %i.bl, %bb.e ], [ %.0.i.i148.i, %bb.h ], [ %.0.i256.i130.i, %bb.g ]
  %i.fu = shl nuw nsw i32 %.0224.i120.i, 1
  %i.fv = shl nsw i32 %.0225.i119.i, 3
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = add nsw i32 %i.fw, %.0.i121.i
  %i.fy = trunc nsw i32 %i.fx to i8
  store i8 %i.fy, ptr %.087.i40, align 1, !tbaa !108
  %i.fz = getelementptr inbounds nuw i8, ptr %.087.i40, i64 1
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %yuv2rgb_full_1_c_template.exit, label %bb.b, !llvm.loop !21

bb.j:                                             ; preds = %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !111
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !111
  %i.ge = sub nsw i32 4096, %7                    ; 2 uses
  %i.gf = icmp sgt i32 %6, 0
  br i1 %i.gf, label %.lr.ph, label %yuv2rgb_full_1_c_template.exit

.lr.ph:                                           ; preds = %bb.j
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 40348
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40352
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40356
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40360
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40364
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40368
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gn = mul nsw i32 %8, 236                     ; 3 uses
  %i.go = add i32 %i.gn, 17
  %i.gp = add i32 %i.gn, 34
  %i.gq = mul nsw i32 %8, 237                     ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 16 uses
  %.188.i32 = phi ptr [ %5, %.lr.ph ], [ %i.nn, %bb.r ] ; 2 uses
  %.sroa.15.031 = phi i32 [ 0, %.lr.ph ], [ %.sroa.15.1, %bb.r ] ; 5 uses
  %.sroa.8.030 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %bb.r ] ; 5 uses
  %.sroa.0.029 = phi i32 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.r ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !107
  %i.gw = sext i16 %i.gv to i32
  %i.gx = shl nsw i32 %i.gw, 2
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !107
  %i.ha = sext i16 %i.gz to i32
  %i.hb = mul nsw i32 %i.ge, %i.ha
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %indvars.iv
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !107
  %i.he = sext i16 %i.hd to i32
  %i.hf = mul nsw i32 %7, %i.he
  %i.hg = add i32 %i.hb, -67108864
  %i.hh = add i32 %i.hg, %i.hf
  %i.hi = ashr i32 %i.hh, 10                      ; 2 uses
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !107
  %i.hl = sext i16 %i.hk to i32
  %i.hm = mul nsw i32 %i.ge, %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %indvars.iv
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !107
  %i.hp = sext i16 %i.ho to i32
  %i.hq = mul nsw i32 %7, %i.hp
  %i.hr = add i32 %i.hm, -67108864
  %i.hs = add i32 %i.hr, %i.hq
  %i.ht = ashr i32 %i.hs, 10                      ; 2 uses
  %i.hu = load i32, ptr %i.gg, align 4, !tbaa !117
  %i.hv = sub nsw i32 %i.gx, %i.hu
  %i.hw = load i32, ptr %i.gh, align 16, !tbaa !118
  %i.hx = mul i32 %i.hv, %i.hw
  %i.hy = add i32 %i.hx, 2097152                  ; 3 uses
  %i.hz = load i32, ptr %i.gi, align 4, !tbaa !119
  %i.ia = mul i32 %i.ht, %i.hz
  %i.ib = add i32 %i.ia, %i.hy                    ; 3 uses
  %i.ic = load i32, ptr %i.gj, align 8, !tbaa !120
  %i.id = mul i32 %i.ht, %i.ic
  %i.ie = add i32 %i.id, %i.hy
  %i.if = load i32, ptr %i.gk, align 4, !tbaa !121
  %i.ig = mul i32 %i.if, %i.hi
  %i.ih = add i32 %i.ie, %i.ig                    ; 3 uses
  %i.ii = load i32, ptr %i.gl, align 16, !tbaa !122
  %i.ij = mul i32 %i.ii, %i.hi
  %i.ik = add i32 %i.ij, %i.hy                    ; 3 uses
  %i.il = or i32 %i.ih, %i.ib
  %i.im = or i32 %i.il, %i.ik
  %.not.i.i = icmp ult i32 %i.im, 1073741824
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.in = tail call i32 @llvm.smax.i32(i32 %i.ib, i32 0)
  %i.io = tail call i32 @llvm.umin.i32(i32 %i.in, i32 1073741823)
  %i.ip = tail call i32 @llvm.smax.i32(i32 %i.ih, i32 0)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 1073741823)
  %i.ir = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 0)
  %i.is = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 1073741823)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0228.i.i = phi i32 [ %i.io, %bb.l ], [ %i.ib, %bb.k ] ; 4 uses
  %.0227.i.i = phi i32 [ %i.iq, %bb.l ], [ %i.ih, %bb.k ] ; 4 uses
  %.0226.i.i = phi i32 [ %i.is, %bb.l ], [ %i.ik, %bb.k ] ; 4 uses
  %i.it = load i32, ptr %i.gm, align 4, !tbaa !123
  switch i32 %i.it, label %bb.o [
    i32 0, label %bb.n
    i32 5, label %bb.q
    i32 4, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.iu = ashr i32 %.0228.i.i, 29                 ; 3 uses
  %.not.i278.i.i = icmp ult i32 %i.iu, 2
  %isnotneg.inv.i279.i.i = icmp sgt i32 %i.iu, -1
  %i.iv = zext i1 %isnotneg.inv.i279.i.i to i32
  %.0.i280.i.i = select i1 %.not.i278.i.i, i32 %i.iu, i32 %i.iv
  %i.iw = ashr i32 %.0227.i.i, 28
  %i.ix = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 0)
  %i.iy = tail call i32 @llvm.umin.i32(i32 %i.ix, i32 3)
  %i.iz = lshr i32 %.0226.i.i, 29
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ja = ashr i32 %.0228.i.i, 22
  %i.jb = ashr i32 %.0227.i.i, 22
  %i.jc = lshr i32 %.0226.i.i, 22
  %i.jd = mul nsw i32 %.sroa.0.029, 7
  %i.je = load ptr, ptr %i.gr, align 16, !tbaa !113 ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !114
  %i.jh = add nsw i32 %i.jg, %i.jd
  %i.ji = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !114
  %i.jl = mul nsw i32 %i.jk, 5
  %i.jm = add nsw i32 %i.jh, %i.jl
  %i.jn = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !114
  %i.jq = mul nsw i32 %i.jp, 3
  %i.jr = add nsw i32 %i.jm, %i.jq
  %i.js = ashr i32 %i.jr, 4
  %i.jt = add nsw i32 %i.js, %i.ja                ; 2 uses
  %i.ju = mul nsw i32 %.sroa.8.030, 7
  %i.jv = load ptr, ptr %i.gs, align 8, !tbaa !113 ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !114
  %i.jy = add nsw i32 %i.jx, %i.ju
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ji
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !114
  %i.kb = mul nsw i32 %i.ka, 5
  %i.kc = add nsw i32 %i.jy, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jn
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !114
  %i.kf = mul nsw i32 %i.ke, 3
  %i.kg = add nsw i32 %i.kc, %i.kf
  %i.kh = ashr i32 %i.kg, 4
  %i.ki = add nsw i32 %i.kh, %i.jb                ; 2 uses
  %i.kj = mul nsw i32 %.sroa.15.031, 7
  %i.kk = load ptr, ptr %i.gt, align 16, !tbaa !113 ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %indvars.iv ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !114
  %i.kn = add nsw i32 %i.km, %i.kj
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ji
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !114
  %i.kq = mul nsw i32 %i.kp, 5
  %i.kr = add nsw i32 %i.kn, %i.kq
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.jn
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !114
  %i.ku = mul nsw i32 %i.kt, 3
  %i.kv = add nsw i32 %i.kr, %i.ku
  %i.kw = ashr i32 %i.kv, 4
  %i.kx = add nsw i32 %i.kw, %i.jc                ; 2 uses
  store i32 %.sroa.0.029, ptr %i.jf, align 4, !tbaa !114
  store i32 %.sroa.8.030, ptr %i.jw, align 4, !tbaa !114
  store i32 %.sroa.15.031, ptr %i.kl, align 4, !tbaa !114
  %i.ky = ashr i32 %i.ki, 6
  %i.kz = icmp sgt i32 %i.jt, 127                 ; 2 uses
  %.0.i188.i = zext i1 %i.kz to i32
  %i.la = tail call i32 @llvm.smax.i32(i32 %i.ky, i32 0)
  %i.lb = tail call i32 @llvm.umin.i32(i32 %i.la, i32 3) ; 2 uses
  %i.lc = icmp sgt i32 %i.kx, 127                 ; 2 uses
  %.0.i184.i = zext i1 %i.lc to i32
  %.neg230.i.i = select i1 %i.kz, i32 -255, i32 0
  %i.ld = add nsw i32 %.neg230.i.i, %i.jt
  %.neg232.i.i = mul nsw i32 %i.lb, -85
  %i.le = add nsw i32 %.neg232.i.i, %i.ki
  %.neg234.i.i = select i1 %i.lc, i32 -255, i32 0
  %i.lf = add nsw i32 %.neg234.i.i, %i.kx
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.lg = ashr i32 %.0228.i.i, 21
  %i.lh = trunc i64 %indvars.iv to i32
  %i.li = add i32 %i.gn, %i.lh
  %i.lj = mul i32 %i.li, 119
  %i.lk = or i32 %i.lj, -256
  %i.ll = add nsw i32 %i.lk, %i.lg
  %i.lm = ashr i32 %i.ll, 8                       ; 3 uses
  %i.ln = ashr i32 %.0227.i.i, 19
  %i.lo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.lp = add i32 %i.go, %i.lo
  %i.lq = mul nsw i32 %i.lp, 119
  %i.lr = or i32 %i.lq, -256
  %i.ls = add nsw i32 %i.lr, %i.ln
  %i.lt = ashr i32 %i.ls, 8
  %i.lu = lshr i32 %.0226.i.i, 21
  %i.lv = add i32 %i.gp, %i.lo
  %i.lw = mul nsw i32 %i.lv, 119
  %i.lx = or i32 %i.lw, -256
  %i.ly = add nsw i32 %i.lx, %i.lu
  %i.lz = ashr i32 %i.ly, 8                       ; 3 uses
  %.not.i260.i.i = icmp ult i32 %i.lm, 2
  %isnotneg.inv.i261.i.i = icmp sgt i32 %i.lm, -1
  %i.ma = zext i1 %isnotneg.inv.i261.i.i to i32
  %.0.i262.i.i = select i1 %.not.i260.i.i, i32 %i.lm, i32 %i.ma
  %i.mb = tail call i32 @llvm.smax.i32(i32 %i.lt, i32 0)
  %i.mc = tail call i32 @llvm.umin.i32(i32 %i.mb, i32 3)
  %.not.i254.i.i = icmp ult i32 %i.lz, 2
  %isnotneg.inv.i255.i.i = icmp sgt i32 %i.lz, -1
  %i.md = zext i1 %isnotneg.inv.i255.i.i to i32
  %.0.i256.i.i = select i1 %.not.i254.i.i, i32 %i.lz, i32 %i.md
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.me = ashr i32 %.0228.i.i, 21
  %i.mf = trunc nuw nsw i64 %indvars.iv to i32
  %i.mg = xor i32 %i.gq, %i.mf
  %i.mh = mul nsw i32 %i.mg, 181
  %i.mi = lshr i32 %i.mh, 1
  %i.mj = or i32 %i.mi, -256
  %i.mk = add nsw i32 %i.mj, %i.me
  %i.ml = ashr i32 %i.mk, 8                       ; 3 uses
  %i.mm = ashr i32 %.0227.i.i, 19
  %i.mn = trunc i64 %indvars.iv to i32
  %i.mo = add i32 %i.mn, 17
  %i.mp = xor i32 %i.mo, %i.gq
  %i.mq = mul nsw i32 %i.mp, 181
  %i.mr = lshr i32 %i.mq, 1
  %i.ms = or i32 %i.mr, -256
  %i.mt = add nsw i32 %i.ms, %i.mm
  %i.mu = ashr i32 %i.mt, 8
  %i.mv = lshr i32 %.0226.i.i, 21
  %i.mw = trunc i64 %indvars.iv to i32
  %i.mx = add i32 %i.mw, 34
  %i.my = xor i32 %i.mx, %i.gq
  %i.mz = mul nsw i32 %i.my, 181
  %i.na = lshr i32 %i.mz, 1
  %i.nb = or i32 %i.na, -256
  %i.nc = add nsw i32 %i.nb, %i.mv
  %i.nd = ashr i32 %i.nc, 8                       ; 3 uses
  %.not.i242.i.i = icmp ult i32 %i.ml, 2
  %isnotneg.inv.i243.i.i = icmp sgt i32 %i.ml, -1
  %i.ne = zext i1 %isnotneg.inv.i243.i.i to i32
  %.0.i244.i.i = select i1 %.not.i242.i.i, i32 %i.ml, i32 %i.ne
  %i.nf = tail call i32 @llvm.smax.i32(i32 %i.mu, i32 0)
  %i.ng = tail call i32 @llvm.umin.i32(i32 %i.nf, i32 3)
  %.not.i.i.i = icmp ult i32 %i.nd, 2
  %isnotneg.inv.i.i.i = icmp sgt i32 %i.nd, -1
  %i.nh = zext i1 %isnotneg.inv.i.i.i to i32
  %.0.i.i.i = select i1 %.not.i.i.i, i32 %i.nd, i32 %i.nh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0.1 = phi i32 [ %i.ld, %bb.o ], [ %.sroa.0.029, %bb.n ], [ %.sroa.0.029, %bb.q ], [ %.sroa.0.029, %bb.p ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %i.le, %bb.o ], [ %.sroa.8.030, %bb.n ], [ %.sroa.8.030, %bb.q ], [ %.sroa.8.030, %bb.p ] ; 2 uses
  %.sroa.15.1 = phi i32 [ %i.lf, %bb.o ], [ %.sroa.15.031, %bb.n ], [ %.sroa.15.031, %bb.q ], [ %.sroa.15.031, %bb.p ] ; 2 uses
  %.0225.i.i = phi i32 [ %.0.i188.i, %bb.o ], [ %.0.i280.i.i, %bb.n ], [ %.0.i244.i.i, %bb.q ], [ %.0.i262.i.i, %bb.p ]
  %.0224.i.i = phi i32 [ %i.lb, %bb.o ], [ %i.iy, %bb.n ], [ %i.ng, %bb.q ], [ %i.mc, %bb.p ]
  %.0.i95.i = phi i32 [ %.0.i184.i, %bb.o ], [ %i.iz, %bb.n ], [ %.0.i.i.i, %bb.q ], [ %.0.i256.i.i, %bb.p ]
  %i.ni = shl nuw nsw i32 %.0224.i.i, 1
  %i.nj = shl nsw i32 %.0225.i.i, 3
  %i.nk = or disjoint i32 %i.ni, %i.nj
  %i.nl = add nsw i32 %i.nk, %.0.i95.i
  %i.nm = trunc nsw i32 %i.nl to i8
  store i8 %i.nm, ptr %.188.i32, align 1, !tbaa !108
  %i.nn = getelementptr inbounds nuw i8, ptr %.188.i32, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %yuv2rgb_full_1_c_template.exit, label %bb.k, !llvm.loop !22

yuv2rgb_full_1_c_template.exit:                   ; preds = %bb.r, %bb.i, %bb.j, %.preheader
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.i ], [ 0, %.preheader ], [ 0, %bb.j ], [ %.sroa.0.1, %bb.r ]
  %.sroa.8.4 = phi i32 [ %.sroa.8.3, %bb.i ], [ 0, %.preheader ], [ 0, %bb.j ], [ %.sroa.8.1, %bb.r ]
  %.sroa.15.4 = phi i32 [ %.sroa.15.3, %bb.i ], [ 0, %.preheader ], [ 0, %bb.j ], [ %.sroa.15.1, %bb.r ]
  %.2.i = phi i32 [ %6, %bb.i ], [ 0, %.preheader ], [ 0, %bb.j ], [ %6, %bb.r ]
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.np = load ptr, ptr %i.no, align 16, !tbaa !113
  %i.nq = zext nneg i32 %.2.i to i64              ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %i.nq
  store i32 %.sroa.0.4, ptr %i.nr, align 4, !tbaa !114
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !113
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nq
  store i32 %.sroa.8.4, ptr %i.nu, align 4, !tbaa !114
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %i.nw = load ptr, ptr %i.nv, align 16, !tbaa !113
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nq
  store i32 %.sroa.15.4, ptr %i.nx, align 4, !tbaa !114
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @yuv2bgr8_full_X_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, ptr nofree readnone captures(none) %8, ptr nofree noundef writeonly captures(none) %9, i32 noundef %10, i32 noundef %11) #6 {
bb.a:
  %i.a = icmp sgt i32 %10, 0
  br i1 %i.a, label %.preheader27.lr.ph, label %yuv2rgb_full_X_c_template.exit

.preheader27.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = icmp sgt i32 %7, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40348
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40352
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40356
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40360
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40364
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40368
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = mul nsw i32 %11, 236                     ; 3 uses
  %i.l = add i32 %i.k, 17
  %i.m = add i32 %i.k, 34
  %i.n = mul nsw i32 %11, 237                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40264
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40272
  %wide.trip.count57 = zext nneg i32 %10 to i64
  %wide.trip.count = zext i32 %3 to i64           ; 2 uses
  %wide.trip.count52 = zext i32 %7 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.r = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  %xtraiter69 = and i64 %wide.trip.count52, 1
  %i.s = icmp eq i32 %7, 1
  %unroll_iter75 = and i64 %wide.trip.count52, 2147483646
  %lcmp.mod71.not = icmp eq i64 %xtraiter69, 0
  %lcmp.mod74 = trunc i32 %7 to i1
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph, %yuv2rgb_write_full.exit
  %indvars.iv54 = phi i64 [ 0, %.preheader27.lr.ph ], [ %indvars.iv.next55, %yuv2rgb_write_full.exit ] ; 22 uses
  %.079.i39 = phi ptr [ %9, %.preheader27.lr.ph ], [ %i.kb, %yuv2rgb_write_full.exit ] ; 2 uses
  %.sroa.10.038 = phi i32 [ 0, %.preheader27.lr.ph ], [ %.sroa.10.1, %yuv2rgb_write_full.exit ] ; 5 uses
  %.sroa.6.037 = phi i32 [ 0, %.preheader27.lr.ph ], [ %.sroa.6.1, %yuv2rgb_write_full.exit ] ; 5 uses
  %.sroa.0.036 = phi i32 [ 0, %.preheader27.lr.ph ], [ %.sroa.0.1, %yuv2rgb_write_full.exit ] ; 5 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader27
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader.loopexit.unr-lcssa ]
  %.072.i29.epil.init = phi i32 [ 512, %.lr.ph.preheader ], [ %i.br, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.072.i29.epil = phi i32 [ %i.ac, %.lr.ph.epil ], [ %.072.i29.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.epil
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv54
  %i.w = load i16, ptr %i.v, align 2, !tbaa !107
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil
  %i.z = load i16, ptr %i.y, align 2, !tbaa !107
  %i.aa = sext i16 %i.z to i32
  %i.ab = mul nsw i32 %i.aa, %i.x
  %i.ac = add i32 %i.ab, %.072.i29.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !1484

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.br, %.preheader.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil ]
  %i.ad = ashr i32 %.lcssa, 10
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader27
  %.072.i.lcssa = phi i32 [ 0, %.preheader27 ], [ %i.ad, %.preheader.loopexit ]
  br i1 %i.c, label %.lr.ph33.preheader, label %._crit_edge

.lr.ph33.preheader:                               ; preds = %.preheader
  br i1 %i.s, label %.lr.ph33.epil.preheader, label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.072.i29 = phi i32 [ %i.br, %.lr.ph ], [ 512, %.lr.ph.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv54
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !107
  %i.ai = sext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !107
  %i.al = sext i16 %i.ak to i32
  %i.am = mul nsw i32 %i.al, %i.ai
  %i.an = add i32 %i.am, %.072.i29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv54
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !107
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.au = load i16, ptr %i.at, align 2, !tbaa !107
  %i.av = sext i16 %i.au to i32
  %i.aw = mul nsw i32 %i.av, %i.as
  %i.ax = add i32 %i.aw, %i.an
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !111
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %indvars.iv54
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !107
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !107
  %i.bf = sext i16 %i.be to i32
  %i.bg = mul nsw i32 %i.bf, %i.bc
  %i.bh = add i32 %i.bg, %i.ax
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv54
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !107
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !107
  %i.bp = sext i16 %i.bo to i32
  %i.bq = mul nsw i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %i.bh                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !12

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %indvars.iv49 = phi i64 [ %indvars.iv.next50.1, %.lr.ph33 ], [ 0, %.lr.ph33.preheader ] ; 5 uses
  %.0.i32 = phi i32 [ %i.cz, %.lr.ph33 ], [ -67108352, %.lr.ph33.preheader ]
  %.071.i31 = phi i32 [ %i.cs, %.lr.ph33 ], [ -67108352, %.lr.ph33.preheader ]
  %niter76 = phi i64 [ %niter76.next.1, %.lr.ph33 ], [ 0, %.lr.ph33.preheader ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv49
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !111
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv54
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !107
  %i.bw = sext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv49
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !107
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = mul nsw i32 %i.bz, %i.bw
  %i.cb = add i32 %i.ca, %.071.i31
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv49
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !111
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv54
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !107
  %i.cg = sext i16 %i.cf to i32
  %i.ch = mul nsw i32 %i.cg, %i.bz
  %i.ci = add i32 %i.ch, %.0.i32
  %indvars.iv.next50 = or disjoint i64 %indvars.iv49, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next50
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !111
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %indvars.iv54
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !107
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next50
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !107
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cn
end_hunk_0
