Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_reverb_node?download=true
inline.NumInlined: 63
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@verblib_initialize:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 229944
  %i.cr = fmul nnan x86_fp80 %i.g, 1.514000e+03   ; 2 uses
  %i.cs = fcmp olt x86_fp80 %i.cr, 1.000000e+00
  %spec.store.select.i107 = select i1 %i.cs, x86_fp80 1.000000e+00, x86_fp80 %i.cr
  %i.ct = fptosi x86_fp80 %spec.store.select.i107 to i32
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 484
  store float 0.000000e+00, ptr %i.cv, align 4, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 500
  store i32 0, ptr %i.cw, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 254168
  %i.cz = fmul nnan x86_fp80 %i.g, 1.557000e+03   ; 2 uses
  %i.da = fcmp olt x86_fp80 %i.cz, 1.000000e+00
  %spec.store.select.i108 = select i1 %i.da, x86_fp80 1.000000e+00, x86_fp80 %i.cz
  %i.db = fptosi x86_fp80 %spec.store.select.i108 to i32
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float 0.000000e+00, ptr %i.dd, align 4, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 0, ptr %i.de, align 4, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 279080
  %i.dh = fmul nnan x86_fp80 %i.g, 1.580000e+03   ; 2 uses
  %i.di = fcmp olt x86_fp80 %i.dh, 1.000000e+00
  %spec.store.select.i109 = select i1 %i.di, x86_fp80 1.000000e+00, x86_fp80 %i.dh
  %i.dj = fptosi x86_fp80 %spec.store.select.i109 to i32
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 532
  store i32 0, ptr %i.dm, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 304360
  %i.dp = fmul nnan x86_fp80 %i.g, 1.617000e+03   ; 2 uses
  %i.dq = fcmp olt x86_fp80 %i.dp, 1.000000e+00
  %spec.store.select.i110 = select i1 %i.dq, x86_fp80 1.000000e+00, x86_fp80 %i.dp
  %i.dr = fptosi x86_fp80 %spec.store.select.i110 to i32
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 0.000000e+00, ptr %i.dt, align 4, !tbaa !17
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.du, align 4, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 330232
  %i.dx = fmul nnan x86_fp80 %i.g, 1.640000e+03   ; 2 uses
  %i.dy = fcmp olt x86_fp80 %i.dx, 1.000000e+00
  %spec.store.select.i111 = select i1 %i.dy, x86_fp80 1.000000e+00, x86_fp80 %i.dx
  %i.dz = fptosi x86_fp80 %spec.store.select.i111 to i32
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  store i32 %i.dz, ptr %i.ea, align 8, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i32 0, ptr %i.ec, align 4, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 356472
  %i.ef = fmul nnan x86_fp80 %i.g, 5.560000e+02   ; 2 uses
  %i.eg = fcmp olt x86_fp80 %i.ef, 1.000000e+00
  %spec.store.select.i112 = select i1 %i.eg, x86_fp80 1.000000e+00, x86_fp80 %i.ef
  %i.eh = fptosi x86_fp80 %spec.store.select.i112 to i32
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 2 uses
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !21
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i32 0, ptr %i.ej, align 8, !tbaa !22
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 365368
  %i.em = fmul nnan x86_fp80 %i.g, 5.790000e+02   ; 2 uses
  %i.en = fcmp olt x86_fp80 %i.em, 1.000000e+00
  %spec.store.select.i113 = select i1 %i.en, x86_fp80 1.000000e+00, x86_fp80 %i.em
  %i.eo = fptosi x86_fp80 %spec.store.select.i113 to i32
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !20
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !21
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.eq, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 374632
  %i.et = fmul nnan x86_fp80 %i.g, 4.410000e+02   ; 2 uses
  %i.eu = fcmp olt x86_fp80 %i.et, 1.000000e+00
  %spec.store.select.i114 = select i1 %i.eu, x86_fp80 1.000000e+00, x86_fp80 %i.et
  %i.ev = fptosi x86_fp80 %spec.store.select.i114 to i32
  store ptr %i.es, ptr %i.er, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !21
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.ex, align 8, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 381688
  %i.fa = fmul nnan x86_fp80 %i.g, 4.640000e+02   ; 2 uses
  %i.fb = fcmp olt x86_fp80 %i.fa, 1.000000e+00
  %spec.store.select.i115 = select i1 %i.fb, x86_fp80 1.000000e+00, x86_fp80 %i.fa
  %i.fc = fptosi x86_fp80 %spec.store.select.i115 to i32
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.fe, align 8, !tbaa !22
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 389112
  %i.fh = fmul nnan x86_fp80 %i.g, 3.410000e+02   ; 2 uses
  %i.fi = fcmp olt x86_fp80 %i.fh, 1.000000e+00
  %spec.store.select.i116 = select i1 %i.fi, x86_fp80 1.000000e+00, x86_fp80 %i.fh
  %i.fj = fptosi x86_fp80 %spec.store.select.i116 to i32
  store ptr %i.fg, ptr %i.ff, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %i.fl, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 394568
  %i.fo = fmul nnan x86_fp80 %i.g, 3.640000e+02   ; 2 uses
  %i.fp = fcmp olt x86_fp80 %i.fo, 1.000000e+00
  %spec.store.select.i117 = select i1 %i.fp, x86_fp80 1.000000e+00, x86_fp80 %i.fo
  %i.fq = fptosi x86_fp80 %spec.store.select.i117 to i32
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 724 ; 2 uses
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !21
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i32 0, ptr %i.fs, align 8, !tbaa !22
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 400392
  %i.fv = fmul nnan x86_fp80 %i.g, 2.250000e+02   ; 2 uses
  %i.fw = fcmp olt x86_fp80 %i.fv, 1.000000e+00
  %spec.store.select.i118 = select i1 %i.fw, x86_fp80 1.000000e+00, x86_fp80 %i.fv
  %i.fx = fptosi x86_fp80 %spec.store.select.i118 to i32
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 0, ptr %i.fz, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 403992
  %i.gc = fmul nnan x86_fp80 %i.g, 2.480000e+02   ; 2 uses
  %i.gd = fcmp olt x86_fp80 %i.gc, 1.000000e+00
  %spec.store.select.i119 = select i1 %i.gd, x86_fp80 1.000000e+00, x86_fp80 %i.gc
  %i.ge = fptosi x86_fp80 %spec.store.select.i119 to i32
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !21
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 0, ptr %i.gg, align 8, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 576
  store float 5.000000e-01, ptr %i.gh, align 8, !tbaa !23
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 672
  store float 5.000000e-01, ptr %i.gi, align 8, !tbaa !23
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 600
  store float 5.000000e-01, ptr %i.gj, align 8, !tbaa !23
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 696
  store float 5.000000e-01, ptr %i.gk, align 8, !tbaa !23
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float 5.000000e-01, ptr %i.gl, align 8, !tbaa !23
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 720
  store float 5.000000e-01, ptr %i.gm, align 8, !tbaa !23
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 648
  store float 5.000000e-01, ptr %i.gn, align 8, !tbaa !23
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 744
  store float 5.000000e-01, ptr %i.go, align 8, !tbaa !23
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 1.000000e+00, ptr %i.gp, align 8, !tbaa !24
  tail call fastcc void @verblib_update(ptr noundef nonnull %0)
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float f0x3F570A3D, ptr %i.gq, align 8, !tbaa !25
  tail call fastcc void @verblib_update(ptr noundef nonnull %0)
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 0.000000e+00, ptr %i.gr, align 4, !tbaa !26
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 2.000000e-01, ptr %i.gs, align 8, !tbaa !27
  tail call fastcc void @verblib_update(ptr noundef nonnull %0)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.gt, align 8, !tbaa !28
  tail call fastcc void @verblib_update(ptr noundef nonnull %0)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> zeroinitializer, ptr %i.gu, align 4, !tbaa !29
  tail call fastcc void @verblib_update(ptr noundef nonnull %0)
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !30
  %i.gx = fcmp ult float %i.gw, 5.000000e-01
  br i1 %i.gx, label %.preheader17.i, label %verblib_mute.exit

.preheader17.i:                                   ; preds = %bb.b
  %i.gy = load i32, ptr %i.k, align 8, !tbaa !16  ; 2 uses
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %.lr.ph.i.i, label %verblib_comb_mute.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader17.i
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.hb = zext nneg i32 %i.gy to i64
  %i.hc = shl nuw nsw i64 %i.hb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ha, i8 0, i64 range(i64 0, 8589934589) %i.hc, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.i

verblib_comb_mute.exit.i:                         ; preds = %.lr.ph.i.i, %.preheader17.i
  %i.hd = load i32, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i12.i, label %verblib_comb_mute.exit13.i

.lr.ph.i12.i:                                     ; preds = %verblib_comb_mute.exit.i
  %i.hf = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.hg = zext nneg i32 %i.hd to i64
  %i.hh = shl nuw nsw i64 %i.hg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hf, i8 0, i64 range(i64 0, 8589934589) %i.hh, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.i

verblib_comb_mute.exit13.i:                       ; preds = %.lr.ph.i12.i, %verblib_comb_mute.exit.i
  %i.hi = load i32, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.1.i, label %verblib_comb_mute.exit.1.i

.lr.ph.i.1.i:                                     ; preds = %verblib_comb_mute.exit13.i
  %i.hk = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.hl = zext nneg i32 %i.hi to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hk, i8 0, i64 range(i64 0, 8589934589) %i.hm, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.1.i

verblib_comb_mute.exit.1.i:                       ; preds = %.lr.ph.i.1.i, %verblib_comb_mute.exit13.i
  %i.hn = load i32, ptr %i.ai, align 8, !tbaa !16 ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i12.1.i, label %verblib_comb_mute.exit13.1.i

.lr.ph.i12.1.i:                                   ; preds = %verblib_comb_mute.exit.1.i
  %i.hp = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.hq = zext nneg i32 %i.hn to i64
  %i.hr = shl nuw nsw i64 %i.hq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hp, i8 0, i64 range(i64 0, 8589934589) %i.hr, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.1.i

verblib_comb_mute.exit13.1.i:                     ; preds = %.lr.ph.i12.1.i, %verblib_comb_mute.exit.1.i
  %i.hs = load i32, ptr %i.aq, align 8, !tbaa !16 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.i.2.i, label %verblib_comb_mute.exit.2.i

.lr.ph.i.2.i:                                     ; preds = %verblib_comb_mute.exit13.1.i
  %i.hu = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.hv = zext nneg i32 %i.hs to i64
  %i.hw = shl nuw nsw i64 %i.hv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hu, i8 0, i64 range(i64 0, 8589934589) %i.hw, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.2.i

verblib_comb_mute.exit.2.i:                       ; preds = %.lr.ph.i.2.i, %verblib_comb_mute.exit13.1.i
  %i.hx = load i32, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph.i12.2.i, label %verblib_comb_mute.exit13.2.i

.lr.ph.i12.2.i:                                   ; preds = %verblib_comb_mute.exit.2.i
  %i.hz = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.ia = zext nneg i32 %i.hx to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hz, i8 0, i64 range(i64 0, 8589934589) %i.ib, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.2.i

verblib_comb_mute.exit13.2.i:                     ; preds = %.lr.ph.i12.2.i, %verblib_comb_mute.exit.2.i
  %i.ic = load i32, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph.i.3.i, label %verblib_comb_mute.exit.3.i

.lr.ph.i.3.i:                                     ; preds = %verblib_comb_mute.exit13.2.i
  %i.ie = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.if = zext nneg i32 %i.ic to i64
  %i.ig = shl nuw nsw i64 %i.if, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ie, i8 0, i64 range(i64 0, 8589934589) %i.ig, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.3.i

verblib_comb_mute.exit.3.i:                       ; preds = %.lr.ph.i.3.i, %verblib_comb_mute.exit13.2.i
  %i.ih = load i32, ptr %i.bo, align 8, !tbaa !16 ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i12.3.i, label %verblib_comb_mute.exit13.3.i

.lr.ph.i12.3.i:                                   ; preds = %verblib_comb_mute.exit.3.i
  %i.ij = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.ik = zext nneg i32 %i.ih to i64
  %i.il = shl nuw nsw i64 %i.ik, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ij, i8 0, i64 range(i64 0, 8589934589) %i.il, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.3.i

verblib_comb_mute.exit13.3.i:                     ; preds = %.lr.ph.i12.3.i, %verblib_comb_mute.exit.3.i
  %i.im = load i32, ptr %i.bw, align 8, !tbaa !16 ; 2 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph.i.4.i, label %verblib_comb_mute.exit.4.i

.lr.ph.i.4.i:                                     ; preds = %verblib_comb_mute.exit13.3.i
  %i.io = load ptr, ptr %i.br, align 8, !tbaa !15
  %i.ip = zext nneg i32 %i.im to i64
  %i.iq = shl nuw nsw i64 %i.ip, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.io, i8 0, i64 range(i64 0, 8589934589) %i.iq, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.4.i

verblib_comb_mute.exit.4.i:                       ; preds = %.lr.ph.i.4.i, %verblib_comb_mute.exit13.3.i
  %i.ir = load i32, ptr %i.ce, align 8, !tbaa !16 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph.i12.4.i, label %verblib_comb_mute.exit13.4.i

.lr.ph.i12.4.i:                                   ; preds = %verblib_comb_mute.exit.4.i
  %i.it = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = shl nuw nsw i64 %i.iu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.it, i8 0, i64 range(i64 0, 8589934589) %i.iv, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.4.i

verblib_comb_mute.exit13.4.i:                     ; preds = %.lr.ph.i12.4.i, %verblib_comb_mute.exit.4.i
  %i.iw = load i32, ptr %i.cm, align 8, !tbaa !16 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.5.i, label %verblib_comb_mute.exit.5.i

.lr.ph.i.5.i:                                     ; preds = %verblib_comb_mute.exit13.4.i
  %i.iy = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.iz = zext nneg i32 %i.iw to i64
  %i.ja = shl nuw nsw i64 %i.iz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.iy, i8 0, i64 range(i64 0, 8589934589) %i.ja, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.5.i

verblib_comb_mute.exit.5.i:                       ; preds = %.lr.ph.i.5.i, %verblib_comb_mute.exit13.4.i
  %i.jb = load i32, ptr %i.cu, align 8, !tbaa !16 ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph.i12.5.i, label %verblib_comb_mute.exit13.5.i

.lr.ph.i12.5.i:                                   ; preds = %verblib_comb_mute.exit.5.i
  %i.jd = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.je = zext nneg i32 %i.jb to i64
  %i.jf = shl nuw nsw i64 %i.je, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 range(i64 0, 8589934589) %i.jf, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.5.i

verblib_comb_mute.exit13.5.i:                     ; preds = %.lr.ph.i12.5.i, %verblib_comb_mute.exit.5.i
  %i.jg = load i32, ptr %i.dc, align 8, !tbaa !16 ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph.i.6.i, label %verblib_comb_mute.exit.6.i

.lr.ph.i.6.i:                                     ; preds = %verblib_comb_mute.exit13.5.i
  %i.ji = load ptr, ptr %i.cx, align 8, !tbaa !15
  %i.jj = zext nneg i32 %i.jg to i64
  %i.jk = shl nuw nsw i64 %i.jj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 0, i64 range(i64 0, 8589934589) %i.jk, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.6.i

verblib_comb_mute.exit.6.i:                       ; preds = %.lr.ph.i.6.i, %verblib_comb_mute.exit13.5.i
  %i.jl = load i32, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph.i12.6.i, label %verblib_comb_mute.exit13.6.i

.lr.ph.i12.6.i:                                   ; preds = %verblib_comb_mute.exit.6.i
  %i.jn = load ptr, ptr %i.df, align 8, !tbaa !15
  %i.jo = zext nneg i32 %i.jl to i64
  %i.jp = shl nuw nsw i64 %i.jo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jn, i8 0, i64 range(i64 0, 8589934589) %i.jp, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.6.i

verblib_comb_mute.exit13.6.i:                     ; preds = %.lr.ph.i12.6.i, %verblib_comb_mute.exit.6.i
  %i.jq = load i32, ptr %i.ds, align 8, !tbaa !16 ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph.i.7.i, label %verblib_comb_mute.exit.7.i

.lr.ph.i.7.i:                                     ; preds = %verblib_comb_mute.exit13.6.i
  %i.js = load ptr, ptr %i.dn, align 8, !tbaa !15
  %i.jt = zext nneg i32 %i.jq to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.js, i8 0, i64 range(i64 0, 8589934589) %i.ju, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit.7.i

verblib_comb_mute.exit.7.i:                       ; preds = %.lr.ph.i.7.i, %verblib_comb_mute.exit13.6.i
  %i.jv = load i32, ptr %i.ea, align 8, !tbaa !16 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph.i12.7.i, label %verblib_comb_mute.exit13.7.i

.lr.ph.i12.7.i:                                   ; preds = %verblib_comb_mute.exit.7.i
  %i.jx = load ptr, ptr %i.dv, align 8, !tbaa !15
  %i.jy = zext nneg i32 %i.jv to i64
  %i.jz = shl nuw nsw i64 %i.jy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jx, i8 0, i64 range(i64 0, 8589934589) %i.jz, i1 false), !tbaa !29
  br label %verblib_comb_mute.exit13.7.i

verblib_comb_mute.exit13.7.i:                     ; preds = %.lr.ph.i12.7.i, %verblib_comb_mute.exit.7.i
  %i.ka = load i32, ptr %i.ei, align 4, !tbaa !21 ; 2 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.i14.i, label %verblib_allpass_mute.exit.i

.lr.ph.i14.i:                                     ; preds = %verblib_comb_mute.exit13.7.i
  %i.kc = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.kd = zext nneg i32 %i.ka to i64
  %i.ke = shl nuw nsw i64 %i.kd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kc, i8 0, i64 range(i64 0, 8589934589) %i.ke, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit.i

verblib_allpass_mute.exit.i:                      ; preds = %.lr.ph.i14.i, %verblib_comb_mute.exit13.7.i
  %i.kf = load i32, ptr %i.ep, align 4, !tbaa !21 ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.i15.i, label %verblib_allpass_mute.exit16.i

.lr.ph.i15.i:                                     ; preds = %verblib_allpass_mute.exit.i
  %i.kh = load ptr, ptr %i.ek, align 8, !tbaa !20
  %i.ki = zext nneg i32 %i.kf to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 0, i64 range(i64 0, 8589934589) %i.kj, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit16.i

verblib_allpass_mute.exit16.i:                    ; preds = %.lr.ph.i15.i, %verblib_allpass_mute.exit.i
  %i.kk = load i32, ptr %i.ew, align 4, !tbaa !21 ; 2 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.i14.1.i, label %verblib_allpass_mute.exit.1.i

.lr.ph.i14.1.i:                                   ; preds = %verblib_allpass_mute.exit16.i
  %i.km = load ptr, ptr %i.er, align 8, !tbaa !20
  %i.kn = zext nneg i32 %i.kk to i64
  %i.ko = shl nuw nsw i64 %i.kn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.km, i8 0, i64 range(i64 0, 8589934589) %i.ko, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit.1.i

verblib_allpass_mute.exit.1.i:                    ; preds = %.lr.ph.i14.1.i, %verblib_allpass_mute.exit16.i
  %i.kp = load i32, ptr %i.fd, align 4, !tbaa !21 ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph.i15.1.i, label %verblib_allpass_mute.exit16.1.i

.lr.ph.i15.1.i:                                   ; preds = %verblib_allpass_mute.exit.1.i
  %i.kr = load ptr, ptr %i.ey, align 8, !tbaa !20
  %i.ks = zext nneg i32 %i.kp to i64
  %i.kt = shl nuw nsw i64 %i.ks, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 range(i64 0, 8589934589) %i.kt, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit16.1.i

verblib_allpass_mute.exit16.1.i:                  ; preds = %.lr.ph.i15.1.i, %verblib_allpass_mute.exit.1.i
  %i.ku = load i32, ptr %i.fk, align 4, !tbaa !21 ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph.i14.2.i, label %verblib_allpass_mute.exit.2.i

.lr.ph.i14.2.i:                                   ; preds = %verblib_allpass_mute.exit16.1.i
  %i.kw = load ptr, ptr %i.ff, align 8, !tbaa !20
  %i.kx = zext nneg i32 %i.ku to i64
  %i.ky = shl nuw nsw i64 %i.kx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kw, i8 0, i64 range(i64 0, 8589934589) %i.ky, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit.2.i

verblib_allpass_mute.exit.2.i:                    ; preds = %.lr.ph.i14.2.i, %verblib_allpass_mute.exit16.1.i
  %i.kz = load i32, ptr %i.fr, align 4, !tbaa !21 ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph.i15.2.i, label %verblib_allpass_mute.exit16.2.i

.lr.ph.i15.2.i:                                   ; preds = %verblib_allpass_mute.exit.2.i
  %i.lb = load ptr, ptr %i.fm, align 8, !tbaa !20
  %i.lc = zext nneg i32 %i.kz to i64
  %i.ld = shl nuw nsw i64 %i.lc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lb, i8 0, i64 range(i64 0, 8589934589) %i.ld, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit16.2.i

verblib_allpass_mute.exit16.2.i:                  ; preds = %.lr.ph.i15.2.i, %verblib_allpass_mute.exit.2.i
  %i.le = load i32, ptr %i.fy, align 4, !tbaa !21 ; 2 uses
  %i.lf = icmp sgt i32 %i.le, 0
  br i1 %i.lf, label %.lr.ph.i14.3.i, label %verblib_allpass_mute.exit.3.i

.lr.ph.i14.3.i:                                   ; preds = %verblib_allpass_mute.exit16.2.i
  %i.lg = load ptr, ptr %i.ft, align 8, !tbaa !20
  %i.lh = zext nneg i32 %i.le to i64
  %i.li = shl nuw nsw i64 %i.lh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lg, i8 0, i64 range(i64 0, 8589934589) %i.li, i1 false), !tbaa !29
  br label %verblib_allpass_mute.exit.3.i

verblib_allpass_mute.exit.3.i:                    ; preds = %.lr.ph.i14.3.i, %verblib_allpass_mute.exit16.2.i
  %i.lj = load i32, ptr %i.gf, align 4, !tbaa !21 ; 2 uses
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph.i15.3.i, label %verblib_mute.exit

.lr.ph.i15.3.i:                                   ; preds = %verblib_allpass_mute.exit.3.i
  %i.ll = load ptr, ptr %i.ga, align 8, !tbaa !20
  %i.lm = zext nneg i32 %i.lj to i64
  %i.ln = shl nuw nsw i64 %i.lm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ll, i8 0, i64 range(i64 0, 8589934589) %i.ln, i1 false), !tbaa !29
  br label %verblib_mute.exit

verblib_mute.exit:                                ; preds = %.lr.ph.i15.3.i, %verblib_allpass_mute.exit.3.i, %bb.b, %bb.a
  %.093 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %verblib_allpass_mute.exit.3.i ], [ 1, %.lr.ph.i15.3.i ]
  ret i32 %.093
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @verblib_set_wet(ptr nofree noundef captures(none) initializes((4, 8), (12, 16), (20, 36), (64, 68), (72, 80), (96, 100), (104, 112), (128, 132), (136, 144), (160, 164), (168, 176), (192, 196), (200, 208), (224, 228), (232, 240), (256, 260), (264, 272), (288, 292), (296, 304), (320, 324), (328, 336), (352, 356), (360, 368), (384, 388), (392, 400), (416, 420), (424, 432), (448, 452), (456, 464), (480, 484), (488, 496), (512, 516), (520, 528), (544, 548), (552, 560)) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fmul float %1, 3.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.a, ptr %i.b, align 8, !tbaa !24
  tail call fastcc void @verblib_update(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @verblib_set_room_size(ptr nofree noundef captures(none) initializes((4, 16), (20, 24), (28, 36), (64, 68), (72, 80), (96, 100), (104, 112), (128, 132), (136, 144), (160, 164), (168, 176), (192, 196), (200, 208), (224, 228), (232, 240), (256, 260), (264, 272), (288, 292), (296, 304), (320, 324), (328, 336), (352, 356), (360, 368), (384, 388), (392, 400), (416, 420), (424, 432), (448, 452), (456, 464), (480, 484), (488, 496), (512, 516), (520, 528), (544, 548), (552, 560)) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call float @llvm.fmuladd.f32(float %1, float 2.800000e-01, float f0x3F333333)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.a, ptr %i.b, align 8, !tbaa !25
  tail call fastcc void @verblib_update(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @verblib_set_dry(ptr nofree noundef writeonly captures(none) initializes((36, 40)) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = fmul float %1, 2.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.a, ptr %i.b, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @verblib_set_damping(ptr nofree noundef captures(none) initializes((4, 8), (12, 24), (28, 36), (64, 68), (72, 80), (96, 100), (104, 112), (128, 132), (136, 144), (160, 164), (168, 176), (192, 196), (200, 208), (224, 228), (232, 240), (256, 260), (264, 272), (288, 292), (296, 304), (320, 324), (328, 336), (352, 356), (360, 368), (384, 388), (392, 400), (416, 420), (424, 432), (448, 452), (456, 464), (480, 484), (488, 496), (512, 516), (520, 528), (544, 548), (552, 560)) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = fmul float %1, 8.000000e-01
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.a, ptr %i.b, align 8, !tbaa !27
  tail call fastcc void @verblib_update(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @verblib_set_width(ptr nofree noundef captures(none) initializes((4, 8), (12, 16), (20, 24), (28, 36), (40, 44), (64, 68), (72, 80), (96, 100), (104, 112), (128, 132), (136, 144), (160, 164), (168, 176), (192, 196), (200, 208), (224, 228), (232, 240), (256, 260), (264, 272), (288, 292), (296, 304), (320, 324), (328, 336), (352, 356), (360, 368), (384, 388), (392, 400), (416, 420), (424, 432), (448, 452), (456, 464), (480, 484), (488, 496), (512, 516), (520, 528), (544, 548), (552, 560)) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %1, ptr %i.a, align 8, !tbaa !28
  tail call fastcc void @verblib_update(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @verblib_set_input_width(ptr nofree noundef writeonly captures(none) initializes((44, 48)) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %1, ptr %i.a, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @verblib_set_mode(ptr nofree noundef captures(none) initializes((4, 8), (12, 16), (20, 24), (28, 36), (48, 52), (64, 68), (72, 80), (96, 100), (104, 112), (128, 132), (136, 144), (160, 164), (168, 176), (192, 196), (200, 208), (224, 228), (232, 240), (256, 260), (264, 272), (288, 292), (296, 304), (320, 324), (328, 336), (352, 356), (360, 368), (384, 388), (392, 400), (416, 420), (424, 432), (448, 452), (456, 464), (480, 484), (488, 496), (512, 516), (520, 528), (544, 548), (552, 560)) %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %1, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @verblib_update(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @verblib_process(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  switch i32 %i.a, label %.loopexit [
    i32 1, label %.preheader155
    i32 2, label %bb.b
  ]

.preheader155:                                    ; preds = %bb.a
  %.not136184 = icmp eq i64 %3, 0
  br i1 %.not136184, label %.loopexit, label %.lr.ph187

.lr.ph187:                                        ; preds = %.preheader155
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !16
  %i.bz = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21
  %.promoted245 = load i32, ptr %i.h, align 4, !tbaa !18
  %.promoted246 = load i32, ptr %i.q, align 4, !tbaa !18
  %.promoted247 = load i32, ptr %i.z, align 4, !tbaa !18
  %.promoted248 = load i32, ptr %i.ai, align 4, !tbaa !18
  %.promoted249 = load i32, ptr %i.ar, align 4, !tbaa !18
  %.promoted250 = load i32, ptr %i.ba, align 4, !tbaa !18
  %.promoted251 = load i32, ptr %i.bj, align 4, !tbaa !18
  %.promoted252 = load i32, ptr %i.bs, align 4, !tbaa !18
  %.promoted253 = load i32, ptr %i.ca, align 8, !tbaa !22
end_hunk_0
