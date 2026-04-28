inline.NumInlined: 125
inline.NumDeleted: 53
begin_hunk_0_@TIFFWriteDirectorySec:bb.a
  %i.kh = zext nneg i16 %i.kg to i32              ; 4 uses
  %i.ki = shl nuw i32 1, %i.kh
  %i.kj = shl i32 3, %i.kh                        ; 2 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %4 = shl nuw nsw i64 %i.kk, 1                   ; 3 uses
  br i1 %i.ec, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.kl = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.km = and i32 %i.kl, 524288
  %.not.i.i774 = icmp eq i32 %i.km, 0
  %i.kn = select i1 %.not.i.i774, i64 4, i64 8
  %5 = icmp samesign ugt i64 %4, %i.kn
  br i1 %5, label %bb.cn, label %TIFFWriteDirectoryTagColormap.exit.thread978

bb.cn:                                            ; preds = %bb.cm
  %i.ko = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.kp = add i64 %i.ko, %4
  store i64 %i.kp, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagColormap.exit.thread978

end_hunk_0
begin_hunk_1_@TIFFWriteDirectorySec:bb.a
  br label %thread-pre-split

bb.co:                                            ; preds = %bb.cl
  %i.ks = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %4) #9 ; 7 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %TIFFWriteDirectoryTagSubifd.exit.thread1120.sink.split, label %bb.cp

end_hunk_1
begin_hunk_2_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.ln = zext i16 %i.lk to i64
  %6 = shl nuw nsw i64 %i.ln, 1                   ; 2 uses
  %i.lo = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.lp = and i32 %i.lo, 524288
  %.not.i.i.i778 = icmp eq i32 %i.lp, 0
  %i.lq = select i1 %.not.i.i.i778, i64 4, i64 8
  %7 = icmp samesign ugt i64 %6, %i.lq
  br i1 %7, label %bb.cu, label %TIFFWriteDirectoryTagShortArray.exit779.thread

bb.cu:                                            ; preds = %bb.ct
  %i.lr = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.ls = add i64 %i.lr, %6
  store i64 %i.ls, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagShortArray.exit779.thread

end_hunk_2
begin_hunk_3_@TIFFWriteDirectorySec:bb.a
  %.051.i = phi i16 [ 3, %bb.ea ], [ %spec.select.i, %bb.eb ], [ 1, %.split.us ] ; 3 uses
  %i.pk = zext nneg i16 %.051.i to i32
  %i.pl = shl i32 %i.pk, %i.op                    ; 3 uses
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %8 = shl nuw nsw i64 %i.pm, 1                   ; 3 uses
  br i1 %i.ec, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.critedge.i
  %i.pn = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.po = and i32 %i.pn, 524288                   ; 2 uses
  %.not.i.i802 = icmp eq i32 %i.po, 0
  %i.pp = select i1 %.not.i.i802, i64 4, i64 8
  %9 = icmp samesign ugt i64 %8, %i.pp
  br i1 %9, label %bb.ed, label %TIFFWriteDirectoryTagTransferfunction.exit.thread.thread

bb.ed:                                            ; preds = %bb.ec
  %i.pq = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.pr = add i64 %i.pq, %8
  store i64 %i.pr, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagTransferfunction.exit.thread.thread

bb.ee:                                            ; preds = %.critedge.i
  %i.ps = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %8) #9 ; 7 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %TIFFWriteDirectoryTagSubifd.exit.thread1120.sink.split, label %bb.ef

end_hunk_3
begin_hunk_4_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %._crit_edge.i
  %i.sm = zext i16 %i.sd to i64
  %10 = shl nuw nsw i64 %i.sm, 2                  ; 2 uses
  %i.sn = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.so = and i32 %i.sn, 524288
  %.not.i.i.i813 = icmp eq i32 %i.so, 0
  %i.sp = select i1 %.not.i.i.i813, i64 4, i64 8
  %11 = icmp samesign ugt i64 %10, %i.sp
  br i1 %11, label %bb.fa, label %TIFFWriteDirectoryTagCheckedIfd8Array.exit.thread62.i

bb.fa:                                            ; preds = %bb.ez
  %i.sq = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.sr = add i64 %i.sq, %10
  store i64 %i.sr, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagCheckedIfd8Array.exit.thread62.i

end_hunk_4
begin_hunk_5_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.zd = zext i32 %i.wy to i64
  %12 = shl nuw nsw i64 %i.zd, 1                  ; 2 uses
  %i.ze = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.zf = and i32 %i.ze, 524288
  %.not.i.i.i850 = icmp eq i32 %i.zf, 0
  %i.zg = select i1 %.not.i.i.i850, i64 4, i64 8
  %13 = icmp samesign ugt i64 %12, %i.zg
  br i1 %13, label %bb.go, label %TIFFWriteDirectoryTagShortArray.exit852.thread

bb.go:                                            ; preds = %bb.gn
  %i.zh = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.zi = add i64 %i.zh, %12
  store i64 %i.zi, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagShortArray.exit852.thread

end_hunk_5
begin_hunk_6_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %bb.gr
  %i.zs = zext i32 %i.wy to i64
  %14 = shl nuw nsw i64 %i.zs, 1                  ; 2 uses
  %i.zt = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.zu = and i32 %i.zt, 524288
  %.not.i.i.i855 = icmp eq i32 %i.zu, 0
  %i.zv = select i1 %.not.i.i.i855, i64 4, i64 8
  %15 = icmp samesign ugt i64 %14, %i.zv
  br i1 %15, label %bb.gt, label %TIFFWriteDirectoryTagSshortArray.exit.thread

bb.gt:                                            ; preds = %bb.gs
  %i.zw = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.zx = add i64 %i.zw, %14
  store i64 %i.zx, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagSshortArray.exit.thread

end_hunk_6
begin_hunk_7_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.aah = zext i32 %i.wy to i64
  %16 = shl nuw nsw i64 %i.aah, 2                 ; 2 uses
  %i.aai = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.aaj = and i32 %i.aai, 524288
  %.not.i.i.i859 = icmp eq i32 %i.aaj, 0
  %i.aak = select i1 %.not.i.i.i859, i64 4, i64 8
  %17 = icmp samesign ugt i64 %16, %i.aak
  br i1 %17, label %bb.gy, label %TIFFWriteDirectoryTagLongArray.exit.thread

bb.gy:                                            ; preds = %bb.gx
  %i.aal = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.aam = add i64 %i.aal, %16
  store i64 %i.aam, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagLongArray.exit.thread

end_hunk_7
begin_hunk_8_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %bb.hb
  %i.aaw = zext i32 %i.wy to i64
  %18 = shl nuw nsw i64 %i.aaw, 2                 ; 2 uses
  %i.aax = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.aay = and i32 %i.aax, 524288
  %.not.i.i.i863 = icmp eq i32 %i.aay, 0
  %i.aaz = select i1 %.not.i.i.i863, i64 4, i64 8
  %19 = icmp samesign ugt i64 %18, %i.aaz
  br i1 %19, label %bb.hd, label %TIFFWriteDirectoryTagSlongArray.exit.thread

bb.hd:                                            ; preds = %bb.hc
  %i.aba = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.abb = add i64 %i.aba, %18
  store i64 %i.abb, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagSlongArray.exit.thread

end_hunk_8
begin_hunk_9_@TIFFWriteDirectorySec:bb.a

bb.ih:                                            ; preds = %bb.ig
  %i.adz = shl i32 %i.wy, 1
  %i.aea = zext i32 %i.adz to i64                 ; 2 uses
  %20 = shl nuw nsw i64 %i.aea, 2                 ; 3 uses
  br i1 %i.ec, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.aeb = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.aec = and i32 %i.aeb, 524288
  %.not.i.i.i881 = icmp eq i32 %i.aec, 0
  %i.aed = select i1 %.not.i.i.i881, i64 4, i64 8
  %21 = icmp samesign ugt i64 %20, %i.aed
  br i1 %21, label %bb.ij, label %TIFFWriteDirectoryTagRationalDoubleArray.exit.thread1070

bb.ij:                                            ; preds = %bb.ii
  %i.aee = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.aef = add i64 %i.aee, %20
  store i64 %i.aef, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagRationalDoubleArray.exit.thread1070

end_hunk_9
begin_hunk_10_@TIFFWriteDirectorySec:bb.a
  br label %bb.kh

bb.ik:                                            ; preds = %bb.ih
  %i.aei = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %20) #9 ; 5 uses
  %i.aej = icmp eq ptr %i.aei, null
  br i1 %i.aej, label %TIFFWriteDirectoryTagSubifd.exit.thread1120.sink.split, label %.preheader.i.i

end_hunk_10
begin_hunk_11_@TIFFWriteDirectorySec:bb.a
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 16
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !92 ; 2 uses
  %i.afa = shl i32 %i.wy, 1
  %i.afb = zext i32 %i.afa to i64                 ; 3 uses
  %22 = shl nuw nsw i64 %i.afb, 2                 ; 6 uses
  br i1 %i.aev, label %bb.iq, label %bb.iv

bb.iq:                                            ; preds = %bb.ip
end_hunk_11
begin_hunk_12_@TIFFWriteDirectorySec:bb.a
  %i.afc = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.afd = and i32 %i.afc, 524288
  %.not.i.i.i893 = icmp eq i32 %i.afd, 0
  %i.afe = select i1 %.not.i.i.i893, i64 4, i64 8
  %23 = icmp samesign ugt i64 %22, %i.afe
  br i1 %23, label %bb.is, label %TIFFWriteDirectoryTagSrationalDoubleArray.exit.thread1079

bb.is:                                            ; preds = %bb.ir
  %i.aff = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.afg = add i64 %i.aff, %22
  store i64 %i.afg, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagSrationalDoubleArray.exit.thread1079

end_hunk_12
begin_hunk_13_@TIFFWriteDirectorySec:bb.a
  br label %bb.kh

bb.it:                                            ; preds = %bb.iq
  %i.afj = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %22) #9 ; 5 uses
  %i.afk = icmp eq ptr %i.afj, null
  br i1 %i.afk, label %TIFFWriteDirectoryTagSubifd.exit.thread1120.sink.split, label %.preheader.i.i883

end_hunk_13
begin_hunk_14_@TIFFWriteDirectorySec:bb.a
  %i.afu = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.afv = and i32 %i.afu, 524288
  %.not.i.i.i905 = icmp eq i32 %i.afv, 0
  %i.afw = select i1 %.not.i.i.i905, i64 4, i64 8
  %24 = icmp samesign ugt i64 %22, %i.afw
  br i1 %24, label %bb.ix, label %TIFFWriteDirectoryTagSrationalArray.exit.thread1084

bb.ix:                                            ; preds = %bb.iw
  %i.afx = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.afy = add i64 %i.afx, %22
  store i64 %i.afy, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagSrationalArray.exit.thread1084

end_hunk_14
begin_hunk_15_@TIFFWriteDirectorySec:bb.a
  br label %bb.ja

bb.iy:                                            ; preds = %bb.iv
  %i.agb = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %22) #9 ; 5 uses
  %i.agc = icmp eq ptr %i.agb, null
  br i1 %i.agc, label %TIFFWriteDirectoryTagSubifd.exit.thread1120.sink.split, label %.preheader.i.i895

end_hunk_15
begin_hunk_16_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %bb.jc
  %i.agp = zext i32 %i.wy to i64
  %25 = shl nuw nsw i64 %i.agp, 2                 ; 2 uses
  %i.agq = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.agr = and i32 %i.agq, 524288
  %.not.i.i.i909 = icmp eq i32 %i.agr, 0
  %i.ags = select i1 %.not.i.i.i909, i64 4, i64 8
  %26 = icmp samesign ugt i64 %25, %i.ags
  br i1 %26, label %bb.je, label %TIFFWriteDirectoryTagFloatArray.exit.thread

bb.je:                                            ; preds = %bb.jd
  %i.agt = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.agu = add i64 %i.agt, %25
  store i64 %i.agu, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagFloatArray.exit.thread

end_hunk_16
begin_hunk_17_@TIFFWriteDirectorySec:bb.a
  br i1 %i.ec, label %bb.jn, label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  %i.ahv = zext i32 %i.wy to i64
  %27 = shl nuw nsw i64 %i.ahv, 2                 ; 2 uses
  %i.ahw = load i32, ptr %i.bw, align 8, !tbaa !27
  %i.ahx = and i32 %i.ahw, 524288
  %.not.i.i.i917 = icmp eq i32 %i.ahx, 0
  %i.ahy = select i1 %.not.i.i.i917, i64 4, i64 8
  %28 = icmp samesign ugt i64 %27, %i.ahy
  br i1 %28, label %bb.jo, label %TIFFWriteDirectoryTagIfdArray.exit.thread

bb.jo:                                            ; preds = %bb.jn
  %i.ahz = load i64, ptr %i.bm, align 8, !tbaa !33
  %i.aia = add i64 %i.ahz, %27
  store i64 %i.aia, ptr %i.bm, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagIfdArray.exit.thread

end_hunk_17
begin_hunk_18_@TIFFWriteDirectorySec:bb.a
  br label %TIFFWriteDirectoryTagIfdIfd8Array.exit

bb.jy:                                            ; preds = %bb.jr
  %i.aix = zext i32 %i.wy to i64                  ; 2 uses
  %i.aiy = shl nuw nsw i64 %i.aix, 2              ; 3 uses
  %i.aiz = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aiy) #9 ; 6 uses
  %i.aja = icmp eq ptr %i.aiz, null
  br i1 %i.aja, label %bb.jz, label %.preheader.i924
end_hunk_18
begin_hunk_19_@TIFFWriteDirectorySec:bb.a
bb.kc:                                            ; preds = %._crit_edge.i927
  %i.aji = and i32 %i.ajh, 524288
  %.not.i.i41.i = icmp eq i32 %i.aji, 0
  %i.ajj = select i1 %.not.i.i41.i, i64 4, i64 8
  %29 = icmp samesign ugt i64 %i.aiy, %i.ajj
  br i1 %29, label %bb.kd, label %EvaluateIFDdatasizeWrite.exit.i42.i

bb.kd:                                            ; preds = %bb.kc
  %i.ajk = load i64, ptr %i.bm, align 8, !tbaa !33
end_hunk_19
begin_hunk_20_@TIFFWriteDirectoryTagShortPerSample:bb.a
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 3 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !49
  %i.d = zext i16 %i.c to i64
  %5 = shl nuw nsw i64 %i.d, 1                    ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_20
begin_hunk_21_@TIFFWriteDirectoryTagShortPerSample:bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = and i32 %i.f, 524288
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not.i.i, i64 4, i64 8
  %6 = icmp samesign ugt i64 %5, %i.h
  br i1 %6, label %bb.c, label %TIFFWriteDirectoryTagCheckedShortArray.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = add i64 %i.j, %5
  store i64 %i.k, ptr %i.i, align 8, !tbaa !33
  br label %TIFFWriteDirectoryTagCheckedShortArray.exit

end_hunk_21
begin_hunk_22_@TIFFWriteDirectoryTagShortPerSample:bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %5) #9 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.preheader

end_hunk_22
begin_hunk_23_@TIFFWriteDirectoryTagLongLong8Array:bb.a
  br i1 %i.at, label %.thread147, label %bb.ah

.thread147:                                       ; preds = %bb.u, %bb.w, %bb.x, %bb.t, %bb.v, %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread182, %WriteAsLong4.exit
  %i.au = zext i32 %4 to i64                      ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 2                ; 3 uses
  %i.aw = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.av) #9 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.y, label %.preheader
end_hunk_23
begin_hunk_24_@TIFFWriteDirectoryTagLongLong8Array:bb.a
bb.ab:                                            ; preds = %._crit_edge167
  %i.bg = and i32 %i.bf, 524288
  %.not.i.i = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not.i.i, i64 4, i64 8
  %6 = icmp samesign ugt i64 %i.av, %i.bh
  br i1 %6, label %bb.ac, label %EvaluateIFDdatasizeWrite.exit.i136

bb.ac:                                            ; preds = %bb.ab
end_hunk_24
begin_hunk_25_@TIFFWriteDirectoryTagLongLong8Array:bb.a
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

bb.ah:                                            ; preds = %bb.u, %bb.w, %bb.x, %WriteAsLong4.exit
  %i.bq = zext i32 %4 to i64                      ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 1                ; 3 uses
  %i.bs = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.br) #9 ; 6 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ai, label %.preheader159
end_hunk_25
begin_hunk_26_@TIFFWriteDirectoryTagLongLong8Array:bb.a
bb.al:                                            ; preds = %._crit_edge
  %i.cc = and i32 %i.cb, 524288
  %.not.i.i139 = icmp eq i32 %i.cc, 0
  %i.cd = select i1 %.not.i.i139, i64 4, i64 8
  %7 = icmp samesign ugt i64 %i.br, %i.cd
  br i1 %7, label %bb.am, label %EvaluateIFDdatasizeWrite.exit.i140

bb.am:                                            ; preds = %bb.al
end_hunk_26
begin_hunk_27_@TIFFWriteDirectoryTagSampleformatArray:bb.a
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge188
  %6 = shl nuw nsw i32 %4, 2
  %i.o = zext nneg i32 %6 to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %i.r = and i32 %i.q, 524288
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i.i.i, i64 4, i64 8
  %i.t = icmp samesign ult i64 %i.s, %i.o
  br i1 %i.t, label %bb.f, label %EvaluateIFDdatasizeWrite.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33
  %i.w = add i64 %i.v, %i.o
  store i64 %i.w, ptr %i.u, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i.i

end_hunk_27
begin_hunk_28_@TIFFWriteDirectoryTagSampleformatArray:bb.a
  br i1 %i.de, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge182
  %7 = shl nuw nsw i32 %4, 1
  %i.df = zext nneg i32 %7 to i64                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !27
  %i.di = and i32 %i.dh, 524288
  %.not.i.i.i134 = icmp eq i32 %i.di, 0
  %i.dj = select i1 %.not.i.i.i134, i64 4, i64 8
  %i.dk = icmp samesign ult i64 %i.dj, %i.df
  br i1 %i.dk, label %bb.ab, label %EvaluateIFDdatasizeWrite.exit.i.i135

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !33
  %i.dn = add i64 %i.dm, %i.df
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i.i135

end_hunk_28
begin_hunk_29_@TIFFWriteDirectoryTagSampleformatArray:bb.a
  br i1 %i.er, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %._crit_edge179
  %8 = shl nuw nsw i32 %4, 2
  %i.es = zext nneg i32 %8 to i64                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !27
  %i.ev = and i32 %i.eu, 524288
  %.not.i.i.i141 = icmp eq i32 %i.ev, 0
  %i.ew = select i1 %.not.i.i.i141, i64 4, i64 8
  %i.ex = icmp samesign ult i64 %i.ew, %i.es
  br i1 %i.ex, label %bb.aj, label %EvaluateIFDdatasizeWrite.exit.i.i142

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !33
  %i.fa = add i64 %i.ez, %i.es
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i.i142

end_hunk_29
begin_hunk_30_@TIFFWriteDirectoryTagSampleformatArray:bb.a
  br i1 %i.hu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %._crit_edge173
  %9 = shl nuw nsw i32 %4, 1
  %i.hv = zext nneg i32 %9 to i64                 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !27
  %i.hy = and i32 %i.hx, 524288
  %.not.i.i.i155 = icmp eq i32 %i.hy, 0
  %i.hz = select i1 %.not.i.i.i155, i64 4, i64 8
  %i.ia = icmp samesign ult i64 %i.hz, %i.hv
  br i1 %i.ia, label %bb.az, label %EvaluateIFDdatasizeWrite.exit.i.i156

bb.az:                                            ; preds = %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !33
  %i.id = add i64 %i.ic, %i.hv
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i.i156

end_hunk_30
begin_hunk_31_@TIFFWriteDirectoryTagSampleformatArray:bb.a
  br i1 %i.jh, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %._crit_edge
  %10 = shl nuw nsw i32 %4, 2
  %i.ji = zext nneg i32 %10 to i64                ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !27
  %i.jl = and i32 %i.jk, 524288
  %.not.i.i.i162 = icmp eq i32 %i.jl, 0
  %i.jm = select i1 %.not.i.i.i162, i64 4, i64 8
  %i.jn = icmp samesign ult i64 %i.jm, %i.ji
  br i1 %i.jn, label %bb.bh, label %EvaluateIFDdatasizeWrite.exit.i.i163

bb.bh:                                            ; preds = %bb.bg
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !33
  %i.jq = add i64 %i.jp, %i.ji
  store i64 %i.jq, ptr %i.jo, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i.i163

end_hunk_31
begin_hunk_32_@TIFFWriteDirectoryTagRationalArray:bb.a
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = shl i32 %4, 1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %6 = shl nuw nsw i64 %i.c, 2                    ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_32
begin_hunk_33_@TIFFWriteDirectoryTagRationalArray:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = and i32 %i.e, 524288
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not.i.i, i64 4, i64 8
  %7 = icmp samesign ugt i64 %6, %i.g
  br i1 %7, label %bb.c, label %EvaluateIFDdatasizeWrite.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = add i64 %i.i, %6
  store i64 %i.j, ptr %i.h, align 8, !tbaa !33
  br label %EvaluateIFDdatasizeWrite.exit.i

end_hunk_33
begin_hunk_34_@TIFFWriteDirectoryTagRationalArray:bb.a
  br label %TIFFWriteDirectoryTagCheckedRationalArray.exit

bb.d:                                             ; preds = %bb.a
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %6) #9 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.preheader.i

end_hunk_34
