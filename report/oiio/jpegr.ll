inline.NumInlined: 1675
inline.NumDeleted: 807
begin_hunk_0_@_ZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbb:bb.a
  store i32 1, ptr %i.r, align 4, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.n, align 8, !tbaa !119
  %i.u = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 256, ptr noundef nonnull @.str.15, i32 noundef %i.t) #28 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !96
  %i.x = tail call noundef ptr @_ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut(i32 noundef %i.w) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !96
  %i.ac = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aa, i64 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %i.ab) #28 ; 0 uses
  br label %bb.ah

bb.i:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !119
  %i.ae = tail call noundef ptr @_ZN8ultrahdr9getOotfFnE19uhdr_color_transfer(i32 noundef %i.ad) ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !119
  %i.aj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ah, i64 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %i.ai) #28 ; 0 uses
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.n, align 8, !tbaa !119
  %i.al = tail call contract noundef float @_ZN8ultrahdr38getReferenceDisplayPeakLuminanceInNitsE19uhdr_color_transfer(i32 noundef %i.ak) ; 3 uses
  %i.am = fcmp contract oeq float %i.al, -1.000000e+00
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !119
  %i.aq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 256, ptr noundef nonnull @.str.18, double noundef -1.000000e+00, i32 noundef %i.ap) #28 ; 0 uses
  br label %bb.ah

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !96 ; 5 uses
  %i.at = load i32, ptr %i.v, align 4, !tbaa !96  ; 4 uses
  %.not127 = icmp eq i32 %i.as, %i.at
  br i1 %.not127, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.at, label %.thread [
    i32 2, label %.thread140
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.au = icmp eq i32 %i.as, 2
  br i1 %i.au, label %.thread, label %.thread140

.thread:                                          ; preds = %bb.n, %bb.o
  %i.av = tail call noundef ptr @_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_(i32 noundef %i.as, i32 noundef %i.at) ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !96 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.thread
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ax, align 4, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.v, align 4, !tbaa !96
  %i.ba = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ay, i64 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %i.az, i32 noundef %.pre) #28 ; 0 uses
  br label %bb.ah

.thread140:                                       ; preds = %bb.n, %bb.o
  %i.bb = tail call noundef ptr @_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_(i32 noundef %i.at, i32 noundef %i.as) ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %.pre141 = load i32, ptr %i.ar, align 4, !tbaa !96 ; 2 uses
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread140
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bd, align 4, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.v, align 4, !tbaa !96
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.be, i64 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %.pre141, i32 noundef %i.bf) #28 ; 0 uses
  br label %bb.ah

bb.r:                                             ; preds = %bb.m, %.thread, %.thread140
  %i.bh = phi i32 [ %.pre, %.thread ], [ %.pre141, %.thread140 ], [ %i.as, %bb.m ]
  %.0102.shrunk = phi i32 [ 1, %.thread ], [ 0, %.thread140 ], [ 1, %bb.m ]
  %.0101 = phi ptr [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %.thread ], [ %i.bb, %.thread140 ], [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %bb.m ] ; 2 uses
  %.0 = phi ptr [ %i.av, %.thread ], [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %.thread140 ], [ @_ZN8ultrahdr18identityConversionENS_5ColorE, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0102.shrunk, ptr %i.bi, align 4, !tbaa !169
  %i.bj = tail call noundef ptr @_ZN8ultrahdr13getYuvToRgbFnE16uhdr_color_gamut(i32 noundef %i.bh) ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.bo = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bm, i64 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %i.bn) #28 ; 0 uses
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %i.v, align 4, !tbaa !96
  %i.bq = tail call noundef ptr @_ZN8ultrahdr13getYuvToRgbFnE16uhdr_color_gamut(i32 noundef %i.bp) ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bs, align 4, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i32, ptr %i.v, align 4, !tbaa !96
  %i.bv = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %i.bu) #28 ; 0 uses
  br label %bb.ah

bb.v:                                             ; preds = %bb.t
  %i.bw = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.bx = tail call noundef ptr @_ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut(i32 noundef %i.bw) ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bz, align 4, !tbaa !82
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load i32, ptr %i.ar, align 4, !tbaa !96
  %i.cc = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ca, i64 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %i.cb) #28 ; 0 uses
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %2, align 8, !tbaa !73
  %i.ce = tail call noundef ptr @_ZN8ultrahdr16getSamplePixelFnE12uhdr_img_fmt(i32 noundef %i.cd) ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !82
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i32, ptr %2, align 8, !tbaa !73
  %i.cj = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ch, i64 noundef 256, ptr noundef nonnull @.str.22, i32 noundef %i.ci) #28 ; 0 uses
  br label %bb.ah

bb.z:                                             ; preds = %bb.x
  %i.ck = load i32, ptr %3, align 8, !tbaa !73
  %i.cl = tail call noundef ptr @_ZN8ultrahdr16getSamplePixelFnE12uhdr_img_fmt(i32 noundef %i.ck) ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %0, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !82
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i32, ptr %3, align 8, !tbaa !73
  %i.cq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.co, i64 noundef 256, ptr noundef nonnull @.str.22, i32 noundef %i.cp) #28 ; 0 uses
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %spec.select = select i1 %6, ptr @_ZN8ultrahdr10p3YuvToRgbENS_5ColorE, ptr %i.bj ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !171 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !121 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !65 ; 5 uses
  %i.cx = udiv i32 %i.cs, %i.cw
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cy = udiv i32 %i.cu, %i.cw
  store i32 %i.cy, ptr %i.b, align 4, !tbaa !3
  %i.cz = icmp ugt i32 %i.cw, %i.cs
  %i.da = icmp ugt i32 %i.cw, %i.cu
  %or.cond = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.cs)
  %i.db = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 8)
  %spec.select128 = lshr i32 %i.db, 3             ; 4 uses
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !172
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.23, i32 noundef %i.cs, i32 noundef %i.cu, i32 noundef %i.cw, i32 noundef %spec.select128) #33 ; 0 uses
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !172
  %fputc = tail call i32 @fputc(i32 10, ptr %i.de) ; 0 uses
  store i32 %spec.select128, ptr %i.cv, align 8, !tbaa !65
  %i.df = udiv i32 %i.cs, %spec.select128
  store i32 %i.df, ptr %i.a, align 4, !tbaa !3
  %i.dg = udiv i32 %i.cu, %spec.select128
  store i32 %i.dg, ptr %i.b, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !67, !range !25, !noundef !26
  %i.dj = trunc nuw i8 %i.di to i1
  %i.dk = select i1 %i.dj, i32 11, i32 2
  store i32 %i.dk, ptr %i.c, align 4, !tbaa !174
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 64, ptr %i.d, align 4, !tbaa !3
  call void @_ZSt11make_uniqueIN8ultrahdr18uhdr_raw_image_extEJ12uhdr_img_fmtR16uhdr_color_gamutR19uhdr_color_transferR16uhdr_color_rangeRjS9_iEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %8) #28 ; 0 uses
  call void @_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.dn = load ptr, ptr %5, align 8, !tbaa !86    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %1, ptr %9, align 8, !tbaa !175
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.do, align 8, !tbaa !179
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %i.dp, align 8, !tbaa !180
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %4, ptr %i.dq, align 8, !tbaa !181
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !182
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  store i32 %i.dt, ptr %i.ds, align 8, !tbaa !183
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.p, ptr %i.du, align 8, !tbaa !184
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.x, ptr %i.dv, align 8, !tbaa !185
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %i.ae, ptr %i.dw, align 8, !tbaa !186
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %.0, ptr %i.dx, align 8, !tbaa !187
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.0101, ptr %i.dy, align 8, !tbaa !188
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %i.bx, ptr %i.dz, align 8, !tbaa !189
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr %spec.select, ptr %i.ea, align 8, !tbaa !190
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 104
  store ptr %i.bq, ptr %i.eb, align 8, !tbaa !191
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %i.ce, ptr %i.ec, align 8, !tbaa !192
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 120
  store ptr %i.cl, ptr %i.ed, align 8, !tbaa !193
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 128
  store float %i.al, ptr %i.ee, align 8, !tbaa !194
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i8 %i.e, ptr %i.ef, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %1, ptr %10, align 8, !tbaa !196
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.eg, align 8, !tbaa !198
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %3, ptr %i.eh, align 8, !tbaa !199
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %4, ptr %i.ei, align 8, !tbaa !200
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.dn, ptr %i.ej, align 8, !tbaa !201
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.el = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.el, ptr %i.ek, align 8, !tbaa !202
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.dt, ptr %i.em, align 4, !tbaa !203
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.p, ptr %i.en, align 8, !tbaa !204
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %i.x, ptr %i.eo, align 8, !tbaa !205
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %i.ae, ptr %i.ep, align 8, !tbaa !206
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 72
  store ptr %.0, ptr %i.eq, align 8, !tbaa !207
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0101, ptr %i.er, align 8, !tbaa !208
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.bx, ptr %i.es, align 8, !tbaa !209
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr %spec.select, ptr %i.et, align 8, !tbaa !210
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr %i.bq, ptr %i.eu, align 8, !tbaa !211
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.ce, ptr %i.ev, align 8, !tbaa !212
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr %i.cl, ptr %i.ew, align 8, !tbaa !213
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 128
  store float %i.al, ptr %i.ex, align 8, !tbaa !214
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 132
  store i8 %i.e, ptr %i.ey, align 4, !tbaa !215
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !69
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @"_ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(133) %9)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call fastcc void @"_ZZN8ultrahdr5JpegR15generateGainMapEP14uhdr_raw_imageS2_PNS_25uhdr_gainmap_metadata_extERSt10unique_ptrINS_18uhdr_raw_image_extESt14default_deleteIS6_EEbbENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(133) %10)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.f, %bb.j, %bb.p, %bb.q, %bb.u, %bb.y, %bb.ag, %bb.aa, %bb.w, %bb.s, %bb.l, %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr5JpegR15compressGainMapEP14uhdr_raw_imagePNS_17JpegEncoderHelperE(ptr dead_on_unwind noalias writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96
  call void @_ZN8ultrahdr9IccHelper15writeIccProfileE19uhdr_color_transfer16uhdr_color_gamut(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, i32 noundef %i.b, i32 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %i.g = load ptr, ptr %4, align 8, !tbaa !97
  %i.h = invoke noundef ptr @_ZN8ultrahdr10DataStruct7getDataEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !97
  %i.j = invoke noundef i64 @_ZN8ultrahdr10DataStruct9getLengthEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8ultrahdr17JpegEncoderHelper13compressImageEPK14uhdr_raw_imageiPKvm(ptr dead_on_unwind writable sret(%struct.uhdr_error_info) align 4 %0, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %2, i32 noundef %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110  ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !113
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !116
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !116
  br label %_ZNSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZNSt12__shared_ptrIN8ultrahdr10DataStructELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !117
end_hunk_0
