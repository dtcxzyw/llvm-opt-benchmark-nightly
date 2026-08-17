inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@JPEGFixupTags:bb.a
  %i.fb = add i64 %spec.select35.i85.i.i, %.sroa.10877.11155167.i
  %i.fc = sub i64 %.sroa.143.11156165.i, %spec.select35.i85.i.i
  br label %._crit_edge.i80.i.i

._crit_edge.i80.i.i:                              ; preds = %bb.az, %JPEGFixupTagsSubsamplingSkip.exit79.i.i
  %.sroa.10877.5.i = phi i64 [ %i.fb, %bb.az ], [ %.sroa.10877.15.i, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 3 uses
  %.sroa.143.5.i = phi i64 [ %i.fc, %bb.az ], [ %.sroa.143.15.i, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 3 uses
  %.sroa.188.5.i = phi i8 [ 1, %bb.az ], [ %.sroa.188.19.i, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 2 uses
  %i.fd = phi i32 [ %spec.select.i87.i.i, %bb.az ], [ %i.eo, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 2 uses
  %i.fe = phi ptr [ %i.p, %bb.az ], [ %i.en, %JPEGFixupTagsSubsamplingSkip.exit79.i.i ] ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !21  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %i.fh = lshr i8 %i.ff, 4                        ; 3 uses
  %i.fi = and i8 %i.ff, 15                        ; 3 uses
  %.not.i90.i.i = icmp eq i32 %i.fd, 1
  br i1 %.not.i90.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i80.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fk = add nsw i32 %i.fd, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit92.i.i

bb.bb:                                            ; preds = %._crit_edge.i80.i.i
  %.not19.i91.i.i = icmp eq i64 %.sroa.143.5.i, 0
  br i1 %.not19.i91.i.i, label %JPEGFixupTagsSubsamplingSkip.exit92.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fl = add i64 %.sroa.10877.5.i, 1
  %i.fm = add i64 %.sroa.143.5.i, -1
  br label %JPEGFixupTagsSubsamplingSkip.exit92.i.i

JPEGFixupTagsSubsamplingSkip.exit92.i.i:          ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sroa.10877.6.i = phi i64 [ %.sroa.10877.5.i, %bb.bb ], [ %i.fl, %bb.bc ], [ %.sroa.10877.5.i, %bb.ba ]
  %.sroa.143.6.i = phi i64 [ 0, %bb.bb ], [ %i.fm, %bb.bc ], [ %.sroa.143.5.i, %bb.ba ]
  %.sroa.188.6.i = phi i8 [ %.sroa.188.5.i, %bb.bb ], [ 0, %bb.bc ], [ %.sroa.188.5.i, %bb.ba ]
  %i.fn = phi ptr [ %i.fg, %bb.bb ], [ %i.fg, %bb.bc ], [ %i.fj, %bb.ba ]
  %i.fo = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %i.fk, %bb.ba ]
  %i.fp = load i16, ptr %i.i, align 2, !tbaa !133
  %i.fq = icmp ugt i16 %i.fp, 1
  br i1 %i.fq, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %JPEGFixupTagsSubsamplingSkip.exit92.i.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i
  %.sroa.10877.7.i = phi i64 [ %.sroa.10877.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.10877.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 4 uses
  %.sroa.143.7.i = phi i64 [ %.sroa.143.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.143.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 6 uses
  %.sroa.188.7.i = phi i8 [ %.sroa.188.9.i, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %.sroa.188.6.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 2 uses
  %i.fr = phi ptr [ %i.gr, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %i.fn, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ]
  %i.fs = phi i32 [ %i.gs, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ %i.fo, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ] ; 2 uses
  %.052143.i.i = phi i16 [ %i.gt, %JPEGFixupTagsSubsamplingSkip.exit108.i.i ], [ 1, %JPEGFixupTagsSubsamplingSkip.exit92.i.i ]
  %.not.i93.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i93.i.i, label %bb.bd, label %JPEGFixupTagsSubsamplingSkip.exit95.i.i

bb.bd:                                            ; preds = %.lr.ph.i.i
  %.not19.i94.i.i = icmp eq i64 %.sroa.143.7.i, 0
  br i1 %.not19.i94.i.i, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i, label %thread-pre-split187.i.thread.i

JPEGFixupTagsSubsamplingSkip.exit95.i.i:          ; preds = %.lr.ph.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.fu = add i32 %i.fs, -1                       ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %thread-pre-split187.i.i, label %._crit_edge.i96.i.i

thread-pre-split187.i.i:                          ; preds = %JPEGFixupTagsSubsamplingSkip.exit95.i.i
  %i.fw = icmp eq i64 %.sroa.143.7.i, 0
  br i1 %i.fw, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i, label %bb.be

thread-pre-split187.i.thread.i:                   ; preds = %bb.bd
  %i.fx = add i64 %.sroa.10877.7.i, 1
  %i.fy = add i64 %.sroa.143.7.i, -1              ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i, label %.thread176.i

bb.be:                                            ; preds = %thread-pre-split187.i.i
  %.not.i100.i.i = icmp eq i8 %.sroa.188.7.i, 0
  br i1 %.not.i100.i.i, label %.thread176.i, label %bb.bf

.thread176.i:                                     ; preds = %bb.be, %thread-pre-split187.i.thread.i
  %.sroa.10877.10172184.i = phi i64 [ %.sroa.10877.7.i, %bb.be ], [ %i.fx, %thread-pre-split187.i.thread.i ] ; 2 uses
  %.sroa.143.10173182.i = phi i64 [ %.sroa.143.7.i, %bb.be ], [ %i.fy, %thread-pre-split187.i.thread.i ]
  %i.ga = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.gb = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.gc = tail call i64 %i.ga(ptr noundef %i.gb, i64 noundef %.sroa.10877.10172184.i, i32 noundef 0) #16, !inline_history !136
  %i.gd = icmp eq i64 %i.gc, -1
  br i1 %i.gd, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i, label %bb.bf

bb.bf:                                            ; preds = %.thread176.i, %bb.be
  %.sroa.10877.10172185.i = phi i64 [ %.sroa.10877.7.i, %bb.be ], [ %.sroa.10877.10172184.i, %.thread176.i ]
  %.sroa.143.10173183.i = phi i64 [ %.sroa.143.7.i, %bb.be ], [ %.sroa.143.10173182.i, %.thread176.i ] ; 2 uses
  %spec.select35.i101.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.143.10173183.i, i64 2048) ; 5 uses
  %i.ge = load ptr, ptr %i.u, align 8, !tbaa !137
  %i.gf = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.gg = tail call i64 %i.ge(ptr noundef %i.gf, ptr noundef nonnull %i.p, i64 noundef %spec.select35.i101.i.i) #16, !inline_history !136
  %.not33.i102.i.i = icmp eq i64 %i.gg, %spec.select35.i101.i.i
  br i1 %.not33.i102.i.i, label %bb.bg, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i

bb.bg:                                            ; preds = %bb.bf
  %spec.select.i103.i.i = trunc nuw nsw i64 %spec.select35.i101.i.i to i32
  %i.gh = add i64 %spec.select35.i101.i.i, %.sroa.10877.10172185.i
  %i.gi = sub i64 %.sroa.143.10173183.i, %spec.select35.i101.i.i
  br label %._crit_edge.i96.i.i

._crit_edge.i96.i.i:                              ; preds = %bb.bg, %JPEGFixupTagsSubsamplingSkip.exit95.i.i
  %.sroa.10877.8.i = phi i64 [ %i.gh, %bb.bg ], [ %.sroa.10877.7.i, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 3 uses
  %.sroa.143.8.i = phi i64 [ %i.gi, %bb.bg ], [ %.sroa.143.7.i, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 3 uses
  %.sroa.188.8.i = phi i8 [ 1, %bb.bg ], [ %.sroa.188.7.i, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 2 uses
  %i.gj = phi i32 [ %spec.select.i103.i.i, %bb.bg ], [ %i.fu, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 2 uses
  %i.gk = phi ptr [ %i.p, %bb.bg ], [ %i.ft, %JPEGFixupTagsSubsamplingSkip.exit95.i.i ] ; 3 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !21
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  %.not63.i.i = icmp eq i8 %i.gl, 17
  br i1 %.not63.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i96.i.i
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGFixupTagsSubsamplingSec.module, ptr noundef nonnull @.str.12) #16
  br label %JPEGFixupTagsSubsamplingSec.exit.i

bb.bi:                                            ; preds = %._crit_edge.i96.i.i
  %.not.i106.i.i = icmp eq i32 %i.gj, 1
  br i1 %.not.i106.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.go = add i32 %i.gj, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

bb.bk:                                            ; preds = %bb.bi
  %.not19.i107.i.i = icmp eq i64 %.sroa.143.8.i, 0
  br i1 %.not19.i107.i.i, label %JPEGFixupTagsSubsamplingSkip.exit108.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gp = add i64 %.sroa.10877.8.i, 1
  %i.gq = add i64 %.sroa.143.8.i, -1
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

JPEGFixupTagsSubsamplingSkip.exit108.i.i:         ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.10877.9.i = phi i64 [ %.sroa.10877.8.i, %bb.bk ], [ %i.gp, %bb.bl ], [ %.sroa.10877.8.i, %bb.bj ]
  %.sroa.143.9.i = phi i64 [ 0, %bb.bk ], [ %i.gq, %bb.bl ], [ %.sroa.143.8.i, %bb.bj ]
  %.sroa.188.9.i = phi i8 [ %.sroa.188.8.i, %bb.bk ], [ 0, %bb.bl ], [ %.sroa.188.8.i, %bb.bj ]
  %i.gr = phi ptr [ %i.gm, %bb.bk ], [ %i.gm, %bb.bl ], [ %i.gn, %bb.bj ]
  %i.gs = phi i32 [ 0, %bb.bk ], [ 0, %bb.bl ], [ %i.go, %bb.bj ]
  %i.gt = add nuw i16 %.052143.i.i, 1             ; 2 uses
  %i.gu = load i16, ptr %i.i, align 2, !tbaa !133
  %i.gv = icmp ult i16 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %JPEGFixupTagsSubsamplingSkip.exit108.i.i, %JPEGFixupTagsSubsamplingSkip.exit92.i.i
  %i.gw = zext nneg i8 %i.fh to i32
  switch i8 %i.fh, label %bb.bn [
    i8 4, label %bb.bm
    i8 2, label %bb.bm
    i8 1, label %bb.bm
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i, %._crit_edge.i.i, %._crit_edge.i.i
  %i.gx = zext nneg i8 %i.fi to i32
  switch i8 %i.fi, label %bb.bn [
    i8 4, label %bb.bo
    i8 2, label %bb.bo
    i8 1, label %bb.bo
  ]

bb.bn:                                            ; preds = %bb.bm, %._crit_edge.i.i
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGFixupTagsSubsamplingSec.module, ptr noundef nonnull @.str.12) #16
  br label %JPEGFixupTagsSubsamplingSec.exit.i

bb.bo:                                            ; preds = %bb.bm, %bb.bm, %bb.bm
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !79 ; 2 uses
  %i.ha = zext nneg i8 %i.fh to i16               ; 2 uses
  %.not60.i.i = icmp eq i16 %i.gz, %i.ha
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 338 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !79 ; 2 uses
  %i.hd = zext nneg i8 %i.fi to i16               ; 2 uses
  %.not61.i.i = icmp eq i16 %i.hc, %i.hd
  %or.cond.i.i = select i1 %.not60.i.i, i1 %.not61.i.i, i1 false
  br i1 %or.cond.i.i, label %JPEGFixupTagsSubsamplingSec.exit.i, label %._crit_edge153.i.i

._crit_edge153.i.i:                               ; preds = %bb.bo
  %i.he = zext i16 %i.gz to i32
  %i.hf = zext i16 %i.hc to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGFixupTagsSubsamplingSec.module, ptr noundef nonnull @.str.13, i32 noundef %i.he, i32 noundef %i.hf, i32 noundef %i.gw, i32 noundef %i.gx) #16
  store i16 %i.ha, ptr %i.gy, align 8, !tbaa !79
  store i16 %i.hd, ptr %i.hb, align 2, !tbaa !79
  br label %JPEGFixupTagsSubsamplingSec.exit.i

JPEGFixupTagsSubsamplingReadWord.exit31.thread.i: ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.t, %bb.l, %bb.k, %bb.i, %._crit_edge.i66.i.i, %bb.q, %bb.p, %bb.n, %bb.bf, %.thread176.i, %thread-pre-split187.i.thread.i, %thread-pre-split187.i.i, %bb.bd, %bb.ay, %.thread.i, %thread-pre-split183.i.thread.i, %thread-pre-split183.i.i, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.ak
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGFixupTagsSubsampling.module, ptr noundef nonnull @.str.11) #16
  br label %JPEGFixupTagsSubsamplingSec.exit.i

JPEGFixupTagsSubsamplingSec.exit.i:               ; preds = %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i, %._crit_edge153.i.i, %bb.bo, %bb.bn, %bb.bh
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #16
  br label %JPEGFixupTagsSubsampling.exit

JPEGFixupTagsSubsampling.exit:                    ; preds = %JPEGFixupTagsSubsamplingSec.exit.i, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGPreDecode(ptr noundef %0, i16 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 35 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = tail call fastcc i32 @TIFFjpeg_abort(ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.bb, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @TIFFjpeg_read_header(ptr noundef nonnull %i.b, i32 noundef 1)
  %.not170 = icmp eq i32 %i.j, 1
  br i1 %.not170, label %bb.e, label %bb.bb

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr %i.l, ptr %i.m, align 8, !tbaa !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %i.o, ptr %i.p, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !66
  %i.s = and i32 %i.r, 1024
  %.not171 = icmp eq i32 %i.s, 0
  br i1 %.not171, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !84
  %i.x = tail call i64 @TIFFTileRowSize(ptr noundef nonnull %0) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = sub i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !86
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ag)
  %i.ah = tail call i64 @TIFFScanlineSize(ptr noundef nonnull %0) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.ah, %bb.g ], [ %i.x, %bb.f ]
  %.0161 = phi i32 [ %i.z, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %.1160 = phi i32 [ %spec.select, %bb.g ], [ %i.w, %bb.f ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  store i64 %.sink, ptr %i.ai, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.al = icmp eq i16 %i.ak, 2
  %i.am = icmp ne i16 %1, 0
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !80 ; 2 uses
  %i.ap = zext i16 %i.ao to i32                   ; 3 uses
  %i.aq = icmp eq i16 %i.ao, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !81 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.14) #16
  br label %bb.bb

bb.l:                                             ; preds = %bb.j
  %i.au = sub nsw i32 0, %i.ap
  %i.av = icmp ult i32 %.0161, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = add i32 %.0161, -1
  %i.ax = add i32 %i.aw, %i.ap
  %i.ay = udiv i32 %i.ax, %i.ap
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.az = phi i32 [ %i.ay, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.ba = zext i16 %i.as to i32                   ; 3 uses
  %i.bb = sub nsw i32 0, %i.ba
  %i.bc = icmp ult i32 %.1160, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = add i32 %.1160, -1
  %i.be = add i32 %i.bd, %i.ba
  %i.bf = udiv i32 %i.be, %i.ba
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.h
  %.1162 = phi i32 [ %.0161, %bb.h ], [ %i.az, %bb.n ], [ %i.az, %bb.o ] ; 7 uses
  %.2 = phi i32 [ %.1160, %bb.h ], [ 0, %bb.n ], [ %i.bf, %bb.o ] ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !21 ; 3 uses
  %i.bi = icmp ult i32 %i.bh, %.1162
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !21 ; 2 uses
  %i.bj = icmp ult i32 %.pre, %.2
  %or.cond228 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond228, label %._crit_edge206, label %bb.q

._crit_edge206:                                   ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.15, i32 noundef %.1162, i32 noundef %.2, i32 noundef %i.bh, i32 noundef %.pre) #16
  %.pre207 = load i32, ptr %i.bg, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge206
  %i.bk = phi i32 [ %.pre207, %._crit_edge206 ], [ %i.bh, %bb.p ] ; 3 uses
  %i.bl = icmp eq i32 %i.bk, %.1162
  br i1 %i.bl, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21 ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, %.2
  br i1 %i.bo, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !141
  %i.br = add i32 %i.bq, %.2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !87
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.q, align 8, !tbaa !66
  %i.bw = and i32 %i.bv, 1024
  %.not172 = icmp eq i32 %i.bw, 0
  br i1 %.not172, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.16, i32 noundef %.1162, i32 noundef %.2, i32 noundef %.1162, i32 noundef %i.bn) #16
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bx = icmp ugt i32 %i.bk, %.1162
  %.phi.trans.insert209 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.pre210 = load i32, ptr %.phi.trans.insert209, align 4, !tbaa !21 ; 2 uses
  %i.by = icmp ugt i32 %.pre210, %.2
  %or.cond229 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond229, label %._crit_edge208, label %bb.w

._crit_edge208:                                   ; preds = %bb.v
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.17, i32 noundef %.1162, i32 noundef %.2, i32 noundef %i.bk, i32 noundef %.pre210) #16
  br label %bb.bb

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !21
  %i.cb = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.cc = icmp eq i16 %i.cb, 1
  br i1 %i.cc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !76
  %i.cf = zext i16 %i.ce to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cg = phi i32 [ %i.cf, %bb.x ], [ 1, %bb.w ]
  %.not173 = icmp eq i32 %i.ca, %i.cg
  br i1 %.not173, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.18) #16
  br label %bb.bb

bb.aa:                                            ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !82
  %i.cl = zext i16 %i.ck to i32
  %.not174 = icmp eq i32 %i.ci, %i.cl
  br i1 %.not174, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.19) #16
  br label %bb.bb

bb.ac:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !21
  %.not175 = icmp eq i32 %i.cn, 0
  br i1 %.not175, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 1344 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !143
  %.not176 = icmp eq i32 %i.cp, 0
  br i1 %.not176, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.20) #16
  store i32 1, ptr %i.co, align 8, !tbaa !143
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.cq = tail call fastcc i32 @TIFFjpeg_has_multiple_scans(ptr noundef nonnull %i.b)
  %.not177 = icmp eq i32 %i.cq, 0
  br i1 %.not177, label %bb.al, label %.preheader194

.preheader194:                                    ; preds = %bb.af
  %i.cr = load i32, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader194
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !21
  %wide.trip.count = zext nneg i32 %i.cr to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.aj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %.0153196 = phi i64 [ 1048576, %.lr.ph ], [ %.1154, %bb.aj ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %i.cu, i64 %indvars.iv ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !144 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !146 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !147
  %i.de = add nsw i32 %i.cx, -1
  %i.df = add i32 %i.de, %i.dd
  %i.dg = udiv i32 %i.df, %i.cx
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !148
  %i.dk = add nsw i32 %i.da, -1
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = udiv i32 %i.dl, %i.da
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dh, 7
  %i.dp = mul i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %.0153196
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.1154 = phi i64 [ %i.dq, %bb.ai ], [ %.0153196, %bb.ah ], [ %.0153196, %bb.ag ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag

._crit_edge:                                      ; preds = %bb.aj, %.preheader194
  %.0153.lcssa = phi i64 [ 1048576, %.preheader194 ], [ %.1154, %bb.aj ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !21
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !71 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  %i.dw = icmp ugt i64 %.0153.lcssa, %i.du
  %or.cond189 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond189, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge
  %i.dx = tail call ptr @getenv(ptr noundef nonnull @.str.21) #16
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.critedge, label %bb.al

.critedge:                                        ; preds = %bb.ak
  %i.dz = add i64 %.0153.lcssa, 999999
  %i.ea = udiv i64 %i.dz, 1000000
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.22, i64 noundef %.0153.lcssa, i64 noundef %i.du, i64 noundef %i.ea) #16
  br label %bb.bb

bb.al:                                            ; preds = %bb.ak, %._crit_edge, %bb.af
  %i.eb = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.ec = icmp eq i16 %i.eb, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !21 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !144 ; 3 uses
  br i1 %i.ec, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !80
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %.not180 = icmp eq i32 %i.eg, %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !146 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.en = load i16, ptr %i.em, align 4, !tbaa !81
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %.not181 = icmp eq i32 %i.el, %i.eo
  %or.cond230 = select i1 %.not180, i1 %.not181, i1 false
  br i1 %or.cond230, label %.preheader, label %._crit_edge211

.preheader:                                       ; preds = %bb.am
  %i.ep = load i32, ptr %i.bz, align 8, !tbaa !21 ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %.preheader
  %wide.trip.count204 = zext nneg i32 %i.ep to i64
  br label %.lr.ph198

._crit_edge211:                                   ; preds = %bb.am
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.23, i32 noundef %i.eg, i32 noundef %i.el, i32 noundef %i.ej, i32 noundef %i.eo) #16
  br label %bb.bb

bb.an:                                            ; preds = %bb.ao
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %bb.an
  %indvars.iv201 = phi i64 [ 1, %.lr.ph198.preheader ], [ %indvars.iv.next202, %bb.an ] ; 2 uses
  %i.er = getelementptr inbounds nuw [96 x i8], ptr %i.ee, i64 %indvars.iv201 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !144
  %.not187 = icmp eq i32 %i.et, 1
  br i1 %.not187, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph198
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !146
  %.not188 = icmp eq i32 %i.ev, 1
  br i1 %.not188, label %bb.an, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph198
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.24) #16
  br label %bb.bb

bb.aq:                                            ; preds = %bb.al
  %.not178 = icmp eq i32 %i.eg, 1
  br i1 %.not178, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !146
  %.not179 = icmp eq i32 %i.ex, 1
  br i1 %.not179, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @JPEGPreDecode.module, ptr noundef nonnull @.str.24) #16
  br label %bb.bb

._crit_edge199:                                   ; preds = %bb.an, %.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !74
  %i.fa = icmp eq i16 %i.ez, 6
  br i1 %i.fa, label %bb.at, label %.thread

bb.at:                                            ; preds = %._crit_edge199
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !77
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.fe, align 4, !tbaa !21
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 2, ptr %2, align 8, !tbaa !21
  br label %bb.ay

.thread:                                          ; preds = %bb.ar, %bb.at, %._crit_edge199
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.ff, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i32 0, ptr %i.fg, align 8, !tbaa !21
  %i.fh = load i16, ptr %i.aj, align 2, !tbaa !75
  %i.fi = icmp eq i16 %i.fh, 1
  br i1 %i.fi, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !80
  %.not182 = icmp eq i16 %i.fk, 1
  br i1 %.not182, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  %i.fm = load i16, ptr %i.fl, align 4, !tbaa !81
  %.not183 = icmp eq i16 %i.fm, 1
  br i1 %.not183, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 1, ptr %i.fn, align 4, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.aw, %bb.au, %bb.ax
  %.sink237 = phi i64 [ 100, %bb.ax ], [ 92, %bb.au ], [ 92, %bb.aw ], [ 92, %.thread ]
  %JPEGDecode.sink234 = phi ptr [ @DecodeRowError, %bb.ax ], [ @JPEGDecode, %bb.au ], [ @JPEGDecode, %bb.aw ], [ @JPEGDecode, %.thread ]
  %JPEGDecode.sink232 = phi ptr [ @JPEGDecodeRaw, %bb.ax ], [ @JPEGDecode, %bb.au ], [ @JPEGDecode, %bb.aw ], [ @JPEGDecode, %.thread ] ; 2 uses
  %.not184192 = phi i1 [ false, %bb.ax ], [ true, %bb.au ], [ true, %bb.aw ], [ true, %.thread ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink237
  store i32 0, ptr %i.fo, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %JPEGDecode.sink234, ptr %i.fp, align 8, !tbaa !54
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr %JPEGDecode.sink232, ptr %i.fq, align 8, !tbaa !55
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %JPEGDecode.sink232, ptr %i.fr, align 8, !tbaa !56
  %i.fs = tail call fastcc i32 @TIFFjpeg_start_decompress(ptr noundef nonnull %i.b)
  %.not185 = icmp eq i32 %i.fs, 0                 ; 2 uses
  %brmerge = or i1 %.not184192, %.not185
  %not..not185 = xor i1 %.not185, true
  %.mux = zext i1 %not..not185 to i32
  br i1 %brmerge, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !21
  %i.fv = load i32, ptr %i.bz, align 8, !tbaa !21
  %.val = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.fw = tail call fastcc i32 @alloc_downsampled_buffers(ptr %.val, ptr noundef %i.fu, i32 noundef %i.fv)
  %.not186 = icmp eq i32 %i.fw, 0
  br i1 %.not186, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  store i32 8, ptr %i.fx, align 8, !tbaa !149
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ay, %bb.ba, %bb.az, %.critedge, %bb.d, %bb.c, %bb.as, %bb.ap, %._crit_edge211, %bb.ab, %bb.z, %._crit_edge208, %bb.k
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %._crit_edge208 ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %._crit_edge211 ], [ 0, %bb.ap ], [ 0, %bb.az ], [ %.mux, %bb.ay ], [ 0, %bb.d ], [ 0, %bb.as ], [ 0, %.critedge ], [ 1, %bb.ba ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGDecode(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1104 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !142  ; 3 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.m = sdiv i64 %2, %i.k
  %i.n = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !150
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef nonnull @.str.33) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = zext i32 %i.q to i64
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.r) ; 4 uses
  %.not78 = icmp eq i64 %spec.select, 0
  br i1 %.not78, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq i32 %i.t, 12
  br i1 %i.u, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 844
  br label %.split89.thread

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.z, %i.ac
  %i.ae = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ad) #16 ; 4 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 3 uses
  %i.ai = icmp eq ptr %i.ae, null
  br i1 %i.ai, label %.split89.thread, label %.split

.split89.thread:                                  ; preds = %bb.g, %.thread
  %i.aj = phi ptr [ %i.v, %.thread ], [ %i.ah, %bb.g ] ; 2 uses
  %.promoted = load i32, ptr %i.aj, align 4, !tbaa !141
  %i.ak = trunc i64 %spec.select to i32
  %i.al = add i32 %.promoted, %i.ak
  %i.am = add i32 %i.al, 1
  %smin100 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 1)
  %i.an = trunc i64 %smin100 to i32
  %i.ao = sub i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !141
  br label %bb.n

.split:                                           ; preds = %bb.g, %.loopexit
  %i.ap = phi ptr [ %i.dc, %.loopexit ], [ %i.ae, %bb.g ]
  %i.aq = phi ptr [ %i.dd, %.loopexit ], [ %i.ae, %bb.g ]
  %.170 = phi i64 [ %i.dj, %.loopexit ], [ %spec.select, %bb.g ] ; 2 uses
  %.067 = phi i64 [ %i.di, %.loopexit ], [ %2, %bb.g ] ; 2 uses
  %.066 = phi ptr [ %i.dh, %.loopexit ], [ %1, %bb.g ] ; 12 uses
  %.not79 = icmp eq ptr %i.aq, null
  br i1 %.not79, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.split
  %i.ar = call fastcc i32 @TIFFjpeg_read_scanlines(ptr noundef nonnull %i.c, ptr noundef %i.a)
  %.not80 = icmp eq i32 %i.ar, 1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !151 ; 26 uses
  br i1 %.not80, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr align 1 %.066, i8 0, i64 %.067, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.as = load i32, ptr %i.s, align 8, !tbaa !21
  switch i32 %i.as, label %.loopexit [
    i32 12, label %bb.j
    i32 8, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.af, align 8, !tbaa !21
  %i.au = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.av = mul i32 %i.au, %i.at
  %i.aw = lshr i32 %i.av, 1                       ; 2 uses
  %.not90 = icmp eq i32 %i.aw, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.j
  %wide.trip.count98 = zext nneg i32 %i.aw to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph87, %bb.k
  %indvars.iv95 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next96, %bb.k ] ; 3 uses
  %i.ax = mul nuw nsw i64 %indvars.iv95, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.066, i64 %i.ax ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv95, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 3 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !79
  %i.bb = lshr i16 %i.ba, 4
  %i.bc = trunc i16 %i.bb to i8
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !21
  %i.bd = load i16, ptr %i.az, align 2, !tbaa !79
  %i.be = shl i16 %i.bd, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !79
  %i.bh = lshr i16 %i.bg, 8
  %i.bi = and i16 %i.bh, 15
  %i.bj = or disjoint i16 %i.bi, %i.be
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !21
  %i.bm = load i16, ptr %i.bf, align 2, !tbaa !79
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !21
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.af, align 8, !tbaa !21
  %i.bq = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.br = mul i32 %i.bq, %i.bp                    ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.br to i64   ; 10 uses
  %min.iters.check = icmp ult i32 %i.br, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.066, i64 %wide.trip.count
  %i.bt = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep113 = getelementptr i8, ptr %.pre, i64 %i.bt
  %bound0 = icmp ult ptr %.066, %scevgep113
end_hunk_0
