inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@decompress_smooth_data:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %.0625989, i64 80
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !79 ; 10 uses
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !80
  %i.ep = zext i16 %i.eo to i64                   ; 13 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !80
  %i.es = zext i16 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eu = load i16, ptr %i.et, align 4, !tbaa !80
  %i.ev = zext i16 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !80
  %i.ey = zext i16 %i.ex to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 18
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !80
  %i.fb = zext i16 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !80
  %i.fe = zext i16 %i.fd to i64                   ; 2 uses
  br i1 %i.el, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
begin_hunk_1_@decompress_smooth_data:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1611 = phi i64 [ %i.fh, %bb.ae ], [ %.0610991, %bb.ad ] ; 4 uses
  %.1606 = phi i64 [ %i.fk, %bb.ae ], [ %.0605993, %bb.ad ] ; 4 uses
  %.1602 = phi i64 [ %i.fn, %bb.ae ], [ %.0601994, %bb.ad ] ; 4 uses
  %.1599 = phi i64 [ %i.fq, %bb.ae ], [ %.0598995, %bb.ad ] ; 4 uses
  %i.fr = load ptr, ptr %i.am, align 8, !tbaa !114
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv1000
end_hunk_1
begin_hunk_2_@decompress_smooth_data:bb.a
  %i.gb = add nsw i32 %i.fx, -2
  %i.gc = getelementptr inbounds nuw i8, ptr %.0625989, i64 28
  %i.gd = shl nuw nsw i64 %i.es, 7                ; 2 uses
  %2 = shl nuw nsw i64 %i.es, 8                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0618, i64 8
  %i.gf = shl nuw nsw i64 %i.ev, 7                ; 2 uses
  %3 = shl nuw nsw i64 %i.ev, 8                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0618, i64 12
  %i.gh = shl nuw nsw i64 %i.ey, 7                ; 2 uses
  %4 = shl nuw nsw i64 %i.ey, 8                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0618, i64 16
  %i.gj = shl nuw nsw i64 %i.fb, 7                ; 2 uses
  %5 = shl nuw nsw i64 %i.fb, 8                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0618, i64 20
  %i.gl = shl nuw nsw i64 %i.fe, 7                ; 2 uses
  %6 = shl nuw nsw i64 %i.fe, 8                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0618, i64 24
  %i.gn = shl nuw nsw i64 %.1611, 7               ; 2 uses
  %7 = shl nuw nsw i64 %.1611, 8                  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0618, i64 28
  %i.gp = shl nuw nsw i64 %.1606, 7               ; 2 uses
  %8 = shl nuw nsw i64 %.1606, 8                  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0618, i64 32
  %i.gr = shl nuw nsw i64 %.1602, 7               ; 2 uses
  %9 = shl nuw nsw i64 %.1602, 8                  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0618, i64 36
  %i.gt = shl nuw nsw i64 %.1599, 7               ; 2 uses
  %10 = shl nuw nsw i64 %.1599, 8                 ; 2 uses
  %11 = shl nuw nsw i64 %i.ep, 8                  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0625989, i64 36 ; 2 uses
  %wide.trip.count = zext nneg i32 %.1614 to i64
  br label %bb.ag
end_hunk_2
begin_hunk_3_@decompress_smooth_data:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.kt = add nuw nsw i64 %i.kq, %i.gd
  %i.ku = udiv i64 %i.kt, %2
  %i.kv = trunc i64 %i.ku to i32                  ; 2 uses
  br i1 %i.ks, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
end_hunk_3
begin_hunk_4_@decompress_smooth_data:bb.a

bb.ay:                                            ; preds = %bb.av
  %i.kx = sub nsw i64 %i.gd, %i.kq
  %i.ky = udiv i64 %i.kx, %2
  %i.kz = trunc i64 %i.ky to i32                  ; 2 uses
  %notmask = shl nsw i32 -1, %i.jx
  %i.la = xor i32 %notmask, -1
  %spec.select777 = tail call i32 @llvm.smin.i32(i32 %i.kz, i32 %i.la)
end_hunk_4
begin_hunk_5_@decompress_smooth_data:bb.a

bb.bg:                                            ; preds = %bb.bf
  %i.mb = add nuw nsw i64 %i.ly, %i.gf
  %i.mc = udiv i64 %i.mb, %3
  %i.md = trunc i64 %i.mc to i32                  ; 2 uses
  br i1 %i.ma, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
end_hunk_5
begin_hunk_6_@decompress_smooth_data:bb.a

bb.bi:                                            ; preds = %bb.bf
  %i.mf = sub nsw i64 %i.gf, %i.ly
  %i.mg = udiv i64 %i.mf, %3
  %i.mh = trunc i64 %i.mg to i32                  ; 2 uses
  %notmask799 = shl nsw i32 -1, %i.ld
  %i.mi = xor i32 %notmask799, -1
  %spec.select779 = tail call i32 @llvm.smin.i32(i32 %i.mh, i32 %i.mi)
end_hunk_6
begin_hunk_7_@decompress_smooth_data:bb.a

bb.bq:                                            ; preds = %bb.bp
  %i.nb = add nuw nsw i64 %i.my, %i.gh
  %i.nc = udiv i64 %i.nb, %4
  %i.nd = trunc i64 %i.nc to i32                  ; 2 uses
  br i1 %i.na, label %bb.br, label %bb.bt

end_hunk_7
begin_hunk_8_@decompress_smooth_data:bb.a

bb.bs:                                            ; preds = %bb.bp
  %i.nf = sub nsw i64 %i.gh, %i.my
  %i.ng = udiv i64 %i.nf, %4
  %i.nh = trunc i64 %i.ng to i32                  ; 2 uses
  %notmask801 = shl nsw i32 -1, %i.ml
  %i.ni = xor i32 %notmask801, -1
end_hunk_8
begin_hunk_9_@decompress_smooth_data:bb.a

bb.ca:                                            ; preds = %bb.bz
  %i.og = add nuw nsw i64 %i.od, %i.gj
  %i.oh = udiv i64 %i.og, %5
  %i.oi = trunc i64 %i.oh to i32                  ; 2 uses
  br i1 %i.of, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
end_hunk_9
begin_hunk_10_@decompress_smooth_data:bb.a

bb.cc:                                            ; preds = %bb.bz
  %i.ok = sub nsw i64 %i.gj, %i.od
  %i.ol = udiv i64 %i.ok, %5
  %i.om = trunc i64 %i.ol to i32                  ; 2 uses
  %notmask803 = shl nsw i32 -1, %i.nl
  %i.on = xor i32 %notmask803, -1
  %spec.select783 = tail call i32 @llvm.smin.i32(i32 %i.om, i32 %i.on)
end_hunk_10
begin_hunk_11_@decompress_smooth_data:bb.a

bb.ck:                                            ; preds = %bb.cj
  %i.ph = add nuw nsw i64 %i.pe, %i.gl
  %i.pi = udiv i64 %i.ph, %6
  %i.pj = trunc i64 %i.pi to i32                  ; 2 uses
  br i1 %i.pg, label %bb.cl, label %bb.cn

end_hunk_11
begin_hunk_12_@decompress_smooth_data:bb.a

bb.cm:                                            ; preds = %bb.cj
  %i.pl = sub nsw i64 %i.gl, %i.pe
  %i.pm = udiv i64 %i.pl, %6
  %i.pn = trunc i64 %i.pm to i32                  ; 2 uses
  %notmask805 = shl nsw i32 -1, %i.oq
  %i.po = xor i32 %notmask805, -1
end_hunk_12
begin_hunk_13_@decompress_smooth_data:bb.a

bb.cs:                                            ; preds = %bb.cr
  %i.qb = add nuw nsw i64 %i.py, %i.gn
  %i.qc = udiv i64 %i.qb, %7
  %i.qd = trunc i64 %i.qc to i32                  ; 2 uses
  br i1 %i.qa, label %bb.ct, label %bb.cv

end_hunk_13
begin_hunk_14_@decompress_smooth_data:bb.a

bb.cu:                                            ; preds = %bb.cr
  %i.qf = sub nsw i64 %i.gn, %i.py
  %i.qg = udiv i64 %i.qf, %7
  %i.qh = trunc i64 %i.qg to i32                  ; 2 uses
  %notmask807 = shl nsw i32 -1, %i.pr
  %i.qi = xor i32 %notmask807, -1
end_hunk_14
begin_hunk_15_@decompress_smooth_data:bb.a

bb.cz:                                            ; preds = %bb.cy
  %i.qw = add nuw nsw i64 %i.qt, %i.gp
  %i.qx = udiv i64 %i.qw, %8
  %i.qy = trunc i64 %i.qx to i32                  ; 2 uses
  br i1 %i.qv, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
end_hunk_15
begin_hunk_16_@decompress_smooth_data:bb.a

bb.db:                                            ; preds = %bb.cy
  %i.ra = sub nsw i64 %i.gp, %i.qt
  %i.rb = udiv i64 %i.ra, %8
  %i.rc = trunc i64 %i.rb to i32                  ; 2 uses
  %notmask809 = shl nsw i32 -1, %i.ql
  %i.rd = xor i32 %notmask809, -1
  %spec.select789 = tail call i32 @llvm.smin.i32(i32 %i.rc, i32 %i.rd)
end_hunk_16
begin_hunk_17_@decompress_smooth_data:bb.a

bb.dg:                                            ; preds = %bb.df
  %i.rr = add nuw nsw i64 %i.ro, %i.gr
  %i.rs = udiv i64 %i.rr, %9
  %i.rt = trunc i64 %i.rs to i32                  ; 2 uses
  br i1 %i.rq, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
end_hunk_17
begin_hunk_18_@decompress_smooth_data:bb.a

bb.di:                                            ; preds = %bb.df
  %i.rv = sub nsw i64 %i.gr, %i.ro
  %i.rw = udiv i64 %i.rv, %9
  %i.rx = trunc i64 %i.rw to i32                  ; 2 uses
  %notmask811 = shl nsw i32 -1, %i.rg
  %i.ry = xor i32 %notmask811, -1
  %spec.select791 = tail call i32 @llvm.smin.i32(i32 %i.rx, i32 %i.ry)
end_hunk_18
begin_hunk_19_@decompress_smooth_data:bb.a

bb.dn:                                            ; preds = %bb.dm
  %i.sl = add nuw nsw i64 %i.si, %i.gt
  %i.sm = udiv i64 %i.sl, %10
  %i.sn = trunc i64 %i.sm to i32                  ; 2 uses
  br i1 %i.sk, label %bb.do, label %bb.dq

end_hunk_19
begin_hunk_20_@decompress_smooth_data:bb.a

bb.dp:                                            ; preds = %bb.dm
  %i.sp = sub nsw i64 %i.gt, %i.si
  %i.sq = udiv i64 %i.sp, %10
  %i.sr = trunc i64 %i.sq to i32                  ; 2 uses
  %notmask813 = shl nsw i32 -1, %i.sb
  %i.ss = xor i32 %notmask813, -1
end_hunk_20
begin_hunk_21_@decompress_smooth_data:bb.a
bb.ds:                                            ; preds = %bb.dr
  %i.ts = add nsw i64 %i.tp, 128
  %i.tt = mul nsw i64 %i.ts, %i.ep
  %i.tu = udiv i64 %i.tt, %11
  %i.tv = trunc i64 %i.tu to i16
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.tw = sub nsw i64 128, %i.tp
  %i.tx = mul nsw i64 %i.tw, %i.ep
  %i.ty = udiv i64 %i.tx, %11
  %i.tz = trunc i64 %i.ty to i16
  %i.ua = sub i16 0, %i.tz
  br label %bb.du
end_hunk_21
