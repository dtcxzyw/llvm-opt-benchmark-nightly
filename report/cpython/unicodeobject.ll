inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_PyUnicode_EncodeUTF16:bb.a
  %i.fg = icmp eq i32 %i.k, 2
  %i.fh = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 4 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = getelementptr [2 x i8], ptr %.0.i, i64 %.val135 ; 5 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph280, %raise_encode_exception.exit
  %.091279 = phi i64 [ 0, %.lr.ph280 ], [ %i.jv, %raise_encode_exception.exit ] ; 4 uses
  %.1216278 = phi ptr [ %.0, %.lr.ph280 ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.fl = sub i64 %.val135, %.091279              ; 11 uses
  br i1 %i.fg, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fm = getelementptr [2 x i8], ptr %.0.i, i64 %.091279 ; 6 uses
  %i.fn = and i64 %i.fl, -4
  %i.fo = getelementptr [2 x i8], ptr %i.fm, i64 %i.fn ; 3 uses
  %i.fp = icmp ult ptr %i.fm, %i.fo               ; 2 uses
  br i1 %i.az, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fp, label %.lr.ph.i141, label %._crit_edge.i

.lr.ph.i141:                                      ; preds = %bb.x, %bb.y
  %.077112.i = phi ptr [ %i.ge, %bb.y ], [ %i.fm, %bb.x ] ; 7 uses
  %.082111.i = phi ptr [ %i.gf, %bb.y ], [ %.1216278, %bb.x ] ; 6 uses
  %i.fq = load <4 x i16>, ptr %.077112.i, align 2, !tbaa !208
  %i.fr = xor <4 x i16> %i.fq, splat (i16 -10240)
  %i.fs = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.fr)
  %i.ft = icmp ult i16 %i.fs, 2048
  br i1 %i.ft, label %._crit_edge.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i141
  %i.fu = load i16, ptr %.077112.i, align 2, !tbaa !208
  %i.fv = getelementptr i8, ptr %.077112.i, i64 6
  %i.fw = getelementptr i8, ptr %.077112.i, i64 4
  %i.fx = getelementptr i8, ptr %.077112.i, i64 2
  store i16 %i.fu, ptr %.082111.i, align 2, !tbaa !208
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !208
  %i.fz = getelementptr i8, ptr %.082111.i, i64 2
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !208
  %i.ga = load i16, ptr %i.fw, align 2, !tbaa !208
  %i.gb = getelementptr i8, ptr %.082111.i, i64 4
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !208
  %i.gc = load i16, ptr %i.fv, align 2, !tbaa !208
  %i.gd = getelementptr i8, ptr %.082111.i, i64 6
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !208
  %i.ge = getelementptr i8, ptr %.077112.i, i64 8 ; 3 uses
  %i.gf = getelementptr i8, ptr %.082111.i, i64 8 ; 2 uses
  %i.gg = icmp ult ptr %i.ge, %i.fo
  br i1 %i.gg, label %.lr.ph.i141, label %._crit_edge.i, !llvm.loop !419

._crit_edge.i:                                    ; preds = %bb.y, %.lr.ph.i141, %bb.x
  %.082.lcssa.i = phi ptr [ %.1216278, %bb.x ], [ %i.gf, %bb.y ], [ %.082111.i, %.lr.ph.i141 ] ; 2 uses
  %.077.lcssa.i = phi ptr [ %i.fm, %bb.x ], [ %i.ge, %bb.y ], [ %.077112.i, %.lr.ph.i141 ] ; 2 uses
  %i.gh = icmp ult ptr %.077.lcssa.i, %i.fj
  br i1 %i.gh, label %.lr.ph120.i, label %ucs2lib_utf16_encode.exit

.lr.ph120.i:                                      ; preds = %._crit_edge.i, %bb.z
  %.1118.i = phi ptr [ %i.gi, %bb.z ], [ %.077.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.183117.i = phi ptr [ %.284.i, %bb.z ], [ %.082.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gi = getelementptr i8, ptr %.1118.i, i64 2   ; 3 uses
  %i.gj = load i16, ptr %.1118.i, align 2, !tbaa !208 ; 2 uses
  %i.gk = and i16 %i.gj, -2048
  %or.cond.i = icmp eq i16 %i.gk, -10240
  br i1 %or.cond.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph120.i
  %.284.i = getelementptr i8, ptr %.183117.i, i64 2 ; 2 uses
  store i16 %i.gj, ptr %.183117.i, align 2, !tbaa !208
  %i.gl = icmp ult ptr %i.gi, %i.fj
  br i1 %i.gl, label %.lr.ph120.i, label %ucs2lib_utf16_encode.exit, !llvm.loop !420

bb.aa:                                            ; preds = %bb.w
  br i1 %i.fp, label %.lr.ph125.i, label %._crit_edge126.i

.lr.ph125.i:                                      ; preds = %bb.aa, %bb.ab
  %.3123.i = phi ptr [ %i.he, %bb.ab ], [ %i.fm, %bb.aa ] ; 7 uses
  %.587122.i = phi ptr [ %i.hf, %bb.ab ], [ %.1216278, %bb.aa ] ; 6 uses
  %i.gm = load <4 x i16>, ptr %.3123.i, align 2, !tbaa !208
  %i.gn = xor <4 x i16> %i.gm, splat (i16 -10240)
  %i.go = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.gn)
  %i.gp = icmp ult i16 %i.go, 2048
  br i1 %i.gp, label %._crit_edge126.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph125.i
  %i.gq = load i16, ptr %.3123.i, align 2, !tbaa !208
  %i.gr = getelementptr i8, ptr %.3123.i, i64 6
  %i.gs = getelementptr i8, ptr %.3123.i, i64 4
  %i.gt = getelementptr i8, ptr %.3123.i, i64 2
  %i.gu = call i16 @llvm.bswap.i16(i16 %i.gq)
  store i16 %i.gu, ptr %.587122.i, align 2, !tbaa !208
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !208
  %i.gw = call i16 @llvm.bswap.i16(i16 %i.gv)
  %i.gx = getelementptr i8, ptr %.587122.i, i64 2
  store i16 %i.gw, ptr %i.gx, align 2, !tbaa !208
  %i.gy = load i16, ptr %i.gs, align 2, !tbaa !208
  %i.gz = call i16 @llvm.bswap.i16(i16 %i.gy)
  %i.ha = getelementptr i8, ptr %.587122.i, i64 4
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !208
  %i.hb = load i16, ptr %i.gr, align 2, !tbaa !208
  %i.hc = call i16 @llvm.bswap.i16(i16 %i.hb)
  %i.hd = getelementptr i8, ptr %.587122.i, i64 6
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !208
  %i.he = getelementptr i8, ptr %.3123.i, i64 8   ; 3 uses
  %i.hf = getelementptr i8, ptr %.587122.i, i64 8 ; 2 uses
  %i.hg = icmp ult ptr %i.he, %i.fo
  br i1 %i.hg, label %.lr.ph125.i, label %._crit_edge126.i, !llvm.loop !421

._crit_edge126.i:                                 ; preds = %bb.ab, %.lr.ph125.i, %bb.aa
  %.587.lcssa.i = phi ptr [ %.1216278, %bb.aa ], [ %i.hf, %bb.ab ], [ %.587122.i, %.lr.ph125.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.fm, %bb.aa ], [ %i.he, %bb.ab ], [ %.3123.i, %.lr.ph125.i ] ; 2 uses
  %i.hh = icmp ult ptr %.3.lcssa.i, %i.fj
  br i1 %i.hh, label %.lr.ph135.i, label %ucs2lib_utf16_encode.exit

.lr.ph135.i:                                      ; preds = %._crit_edge126.i, %bb.ac
  %.4133.i = phi ptr [ %i.hi, %bb.ac ], [ %.3.lcssa.i, %._crit_edge126.i ] ; 2 uses
  %.688132.i = phi ptr [ %.7.i, %bb.ac ], [ %.587.lcssa.i, %._crit_edge126.i ] ; 3 uses
  %i.hi = getelementptr i8, ptr %.4133.i, i64 2   ; 3 uses
  %i.hj = load i16, ptr %.4133.i, align 2, !tbaa !208 ; 2 uses
  %i.hk = and i16 %i.hj, -2048
  %or.cond164.i = icmp eq i16 %i.hk, -10240
  br i1 %or.cond164.i, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph135.i
  %i.hl = call i16 @llvm.bswap.i16(i16 %i.hj)
  %.7.i = getelementptr i8, ptr %.688132.i, i64 2 ; 2 uses
  store i16 %i.hl, ptr %.688132.i, align 2, !tbaa !208
  %i.hm = icmp ult ptr %i.hi, %i.fj
  br i1 %i.hm, label %.lr.ph135.i, label %ucs2lib_utf16_encode.exit, !llvm.loop !422

.loopexit.i:                                      ; preds = %.lr.ph120.i, %.lr.ph135.i
  %.11.i = phi ptr [ %.688132.i, %.lr.ph135.i ], [ %.183117.i, %.lr.ph120.i ]
  %.6.i = phi ptr [ %i.hi, %.lr.ph135.i ], [ %i.gi, %.lr.ph120.i ]
  %i.hn = ptrtoint ptr %.6.i to i64
  %i.ho = sub i64 %i.fk, %i.hn
  %i.hp = ashr exact i64 %i.ho, 1
  %.neg.i = xor i64 %i.hp, -1
  %i.hq = add i64 %i.fl, %.neg.i
  br label %ucs2lib_utf16_encode.exit

bb.ad:                                            ; preds = %bb.v
  %i.hr = getelementptr [4 x i8], ptr %.0.i, i64 %.091279 ; 3 uses
  %i.hs = icmp ult ptr %i.hr, %i.fh               ; 2 uses
  br i1 %i.az, label %.preheader.i149, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.ad
  br i1 %i.hs, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.preheader.i149:                                  ; preds = %bb.ad
  br i1 %i.hs, label %.lr.ph76.i, label %ucs2lib_utf16_encode.exit

.lr.ph.i146:                                      ; preds = %.preheader66.i, %bb.aj
  %.05073.i = phi ptr [ %i.ht, %bb.aj ], [ %i.hr, %.preheader66.i ] ; 2 uses
  %.05172.i = phi ptr [ %.253.i, %bb.aj ], [ %.1216278, %.preheader66.i ] ; 8 uses
  %i.ht = getelementptr i8, ptr %.05073.i, i64 4  ; 3 uses
  %i.hu = load i32, ptr %.05073.i, align 4, !tbaa !7 ; 7 uses
  %i.hv = icmp ult i32 %i.hu, 55296
  br i1 %i.hv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i146
  %i.hw = trunc nuw i32 %i.hu to i16
  %i.hx = getelementptr i8, ptr %.05172.i, i64 2
  store i16 %i.hw, ptr %.05172.i, align 2, !tbaa !208
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i146
  %i.hy = icmp ult i32 %i.hu, 57344
  br i1 %i.hy, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hz = icmp ugt i32 %i.hu, 65535
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = lshr i32 %i.hu, 10
  %i.ib = trunc i32 %i.ia to i16
  %i.ic = add i16 %i.ib, -10304
  store i16 %i.ic, ptr %.05172.i, align 2, !tbaa !208
  %i.id = trunc i32 %i.hu to i16
  %i.ie = and i16 %i.id, 1023
  %i.if = or disjoint i16 %i.ie, -9216
  %i.ig = getelementptr i8, ptr %.05172.i, i64 2
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !208
  %i.ih = getelementptr i8, ptr %.05172.i, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ii = trunc nuw i32 %i.hu to i16
  %i.ij = getelementptr i8, ptr %.05172.i, i64 2
  store i16 %i.ii, ptr %.05172.i, align 2, !tbaa !208
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %.253.i = phi ptr [ %i.ij, %bb.ai ], [ %i.hx, %bb.ae ], [ %i.ih, %bb.ah ] ; 2 uses
  %i.ik = icmp ult ptr %i.ht, %i.fh
  br i1 %i.ik, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.lr.ph76.i:                                       ; preds = %.preheader.i149, %bb.ap
  %.175.i = phi ptr [ %i.il, %bb.ap ], [ %i.hr, %.preheader.i149 ] ; 2 uses
  %.374.i = phi ptr [ %.5.i, %bb.ap ], [ %.1216278, %.preheader.i149 ] ; 7 uses
  %i.il = getelementptr i8, ptr %.175.i, i64 4    ; 3 uses
  %i.im = load i32, ptr %.175.i, align 4, !tbaa !7 ; 9 uses
  %i.in = icmp ult i32 %i.im, 55296
  br i1 %i.in, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph76.i
  %i.io = shl nuw nsw i32 %i.im, 8
  %i.ip = lshr i32 %i.im, 8
  %i.iq = or disjoint i32 %i.io, %i.ip
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr i8, ptr %.374.i, i64 2
  store i16 %i.ir, ptr %.374.i, align 2, !tbaa !208
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph76.i
  %i.it = icmp ult i32 %i.im, 57344
  br i1 %i.it, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iu = icmp ugt i32 %i.im, 65535
  br i1 %i.iu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.iv = lshr i32 %i.im, 10
  %i.iw = and i32 %i.im, 1023
  %3 = add nuw nsw i32 %i.iv, 55232
  %4 = insertelement <2 x i32> poison, i32 %3, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.iw, i64 1 ; 2 uses
  %6 = shl nuw nsw <2 x i32> %5, splat (i32 8)
  %7 = lshr <2 x i32> %5, splat (i32 8)
  %8 = and <2 x i32> %7, <i32 255, i32 -1>
  %9 = or disjoint <2 x i32> %8, %6
  %10 = trunc <2 x i32> %9 to <2 x i16>
  %11 = or <2 x i16> %10, <i16 0, i16 220>
  store <2 x i16> %11, ptr %.374.i, align 2, !tbaa !208
  %i.ix = getelementptr i8, ptr %.374.i, i64 4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.iy = shl nuw nsw i32 %i.im, 8
  %i.iz = lshr i32 %i.im, 8
  %i.ja = or disjoint i32 %i.iy, %i.iz
  %i.jb = trunc i32 %i.ja to i16
  %i.jc = getelementptr i8, ptr %.374.i, i64 2
  store i16 %i.jb, ptr %.374.i, align 2, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.5.i = phi ptr [ %i.jc, %bb.ao ], [ %i.is, %bb.ak ], [ %i.ix, %bb.an ] ; 2 uses
  %i.jd = icmp ult ptr %i.il, %i.fh
  br i1 %i.jd, label %.lr.ph76.i, label %ucs2lib_utf16_encode.exit

.thread.i:                                        ; preds = %bb.af, %bb.al
  %.7.i147 = phi ptr [ %.374.i, %bb.al ], [ %.05172.i, %bb.af ]
  %.2.i = phi ptr [ %i.il, %bb.al ], [ %i.ht, %bb.af ]
  %i.je = ptrtoint ptr %.2.i to i64
  %i.jf = sub i64 %i.fi, %i.je
  %i.jg = ashr exact i64 %i.jf, 2
  %.neg.i148 = xor i64 %i.jg, -1
  %i.jh = add i64 %i.fl, %.neg.i148
  br label %ucs2lib_utf16_encode.exit

ucs2lib_utf16_encode.exit:                        ; preds = %bb.aj, %bb.ap, %bb.z, %bb.ac, %.thread.i, %.preheader.i149, %.preheader66.i, %.loopexit.i, %._crit_edge126.i, %._crit_edge.i
  %.2217 = phi ptr [ %.7.i, %bb.ac ], [ %.11.i, %.loopexit.i ], [ %.5.i, %bb.ap ], [ %.587.lcssa.i, %._crit_edge126.i ], [ %.082.lcssa.i, %._crit_edge.i ], [ %.7.i147, %.thread.i ], [ %.284.i, %bb.z ], [ %.1216278, %.preheader.i149 ], [ %.1216278, %.preheader66.i ], [ %.253.i, %bb.aj ] ; 3 uses
  %.pn = phi i64 [ %i.fl, %bb.ac ], [ %i.hq, %.loopexit.i ], [ %i.fl, %bb.ap ], [ %i.fl, %._crit_edge126.i ], [ %i.fl, %._crit_edge.i ], [ %i.jh, %.thread.i ], [ %i.fl, %bb.z ], [ %i.fl, %.preheader.i149 ], [ %i.fl, %.preheader66.i ], [ %i.fl, %bb.aj ]
  %.192 = add i64 %.pn, %.091279                  ; 6 uses
  %i.ji = icmp eq i64 %.192, %.val135
  br i1 %i.ji, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %ucs2lib_utf16_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.jj = add i64 %.192, 1                        ; 3 uses
  %i.jk = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %.095, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.192, i64 noundef %i.jj, ptr noundef %i.c) ; 13 uses
  %.not123 = icmp eq ptr %i.jk, null
  br i1 %.not123, label %bb.bo, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jl = getelementptr i8, ptr %i.jk, i64 8      ; 2 uses
  %.val128 = load ptr, ptr %i.jl, align 8, !tbaa !197
  %i.jm = getelementptr i8, ptr %.val128, i64 168
  %.val131 = load i64, ptr %i.jm, align 8, !tbaa !198 ; 2 uses
  %i.jn = and i64 %.val131, 134217728
  %.not124 = icmp eq i64 %i.jn, 0
  %i.jo = getelementptr i8, ptr %i.jk, i64 16
  %.val134 = load i64, ptr %i.jo, align 8, !tbaa !193 ; 9 uses
  br i1 %.not124, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jp = and i64 %.val134, 1
  %.not126 = icmp eq i64 %i.jp, 0
  br i1 %.not126, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jj, ptr noundef nonnull @.str.77)
  %i.jq = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i150 = icmp eq ptr %i.jq, null
  br i1 %.not.i150, label %.loopexit, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.as
  %i.jr = ashr exact i64 %.val134, 1
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.js = getelementptr i8, ptr %i.jk, i64 32
  %.val133 = load i32, ptr %i.js, align 8
  %i.jt = and i32 %.val133, 64
  %.not125 = icmp eq i32 %i.jt, 0
  br i1 %.not125, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jj, ptr noundef nonnull @.str.77)
  %i.ju = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i151 = icmp eq ptr %i.ju, null
  br i1 %.not.i151, label %.loopexit, label %.loopexit.sink.split

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.089 = phi i64 [ %i.jr, %bb.au ], [ %.val134, %bb.av ]
  %i.jv = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.jw = sub i64 %.192, %i.jv
  %i.jx = add i64 %i.jw, %.089                    ; 2 uses
  %i.jy = icmp sgt i64 %i.jx, 0
  br i1 %i.jy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jz = shl nuw i64 %i.jx, 1
  %i.ka = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.ey, i64 noundef %i.jz, ptr noundef %.2217) #33 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %.loopexit, label %._crit_edge324

._crit_edge324:                                   ; preds = %bb.ay
  %.val.pre = load ptr, ptr %i.jl, align 8, !tbaa !197
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 168
  %.val130.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge324, %bb.ax
  %.val130 = phi i64 [ %.val130.pre, %._crit_edge324 ], [ %.val131, %bb.ax ]
  %.3 = phi ptr [ %i.ka, %._crit_edge324 ], [ %.2217, %bb.ax ] ; 6 uses
  %i.kc = and i64 %.val130, 134217728
  %.not127 = icmp eq i64 %i.kc, 0
  %i.kd = getelementptr i8, ptr %i.jk, i64 32     ; 2 uses
  br i1 %.not127, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.3, ptr align 1 %i.kd, i64 %.val134, i1 false)
  %i.ke = sdiv i64 %.val134, 2
  %i.kf = getelementptr [2 x i8], ptr %.3, i64 %i.ke
  br label %ucs1lib_utf16_encode.exit194

bb.bb:                                            ; preds = %bb.az
  %.val.i153 = load i32, ptr %i.kd, align 8       ; 2 uses
  %i.kg = and i32 %.val.i153, 32
  %.not.i154 = icmp eq i32 %i.kg, 0
  br i1 %.not.i154, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = and i32 %.val.i153, 64
  %.not.i.i155 = icmp eq i32 %i.kh, 0
  %.0.v.i.i156 = select i1 %.not.i.i155, i64 56, i64 40
  %.0.i.i157 = getelementptr i8, ptr %i.jk, i64 %.0.v.i.i156
  br label %_PyUnicode_DATA.exit160

bb.bd:                                            ; preds = %bb.bb
  %i.ki = getelementptr i8, ptr %i.jk, i64 56
  %.val4.i159 = load ptr, ptr %i.ki, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit160

_PyUnicode_DATA.exit160:                          ; preds = %bb.bc, %bb.bd
  %.0.i158 = phi ptr [ %.0.i.i157, %bb.bc ], [ %.val4.i159, %bb.bd ] ; 8 uses
  %i.kj = ptrtoaddr ptr %.0.i158 to i64           ; 4 uses
  %i.kk = getelementptr i8, ptr %.0.i158, i64 %.val134 ; 2 uses
  %i.kl = and i64 %.val134, -4
  %i.km = getelementptr i8, ptr %.0.i158, i64 %i.kl ; 3 uses
  %i.kn = icmp ult ptr %.0.i158, %i.km            ; 2 uses
  br i1 %i.az, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.kn, label %.lr.ph.i174, label %.preheader47.i162

.preheader47.loopexit.i177:                       ; preds = %.lr.ph.i174
  %.pre75.i178 = ptrtoaddr ptr %i.lw to i64
  br label %.preheader47.i162

.preheader47.i162:                                ; preds = %.preheader47.loopexit.i177, %bb.be
  %.0.lcssa71.pre-phi.i163 = phi i64 [ %.pre75.i178, %.preheader47.loopexit.i177 ], [ %i.kj, %bb.be ] ; 2 uses
  %.043.lcssa.i164 = phi ptr [ %i.lx, %.preheader47.loopexit.i177 ], [ %.3, %bb.be ] ; 9 uses
  %.0.lcssa.i165 = phi ptr [ %i.lw, %.preheader47.loopexit.i177 ], [ %.0.i158, %bb.be ] ; 9 uses
  %i.ko = icmp ult ptr %.0.lcssa.i165, %i.kk
  br i1 %i.ko, label %iter.check517, label %ucs1lib_utf16_encode.exit194

iter.check517:                                    ; preds = %.preheader47.i162
  %i.kp = add i64 %.val134, %i.kj                 ; 2 uses
  %i.kq = sub i64 %i.kp, %.0.lcssa71.pre-phi.i163 ; 8 uses
  %scevgep.i169 = getelementptr i8, ptr %.0.lcssa.i165, i64 %i.kq ; 2 uses
  %min.iters.check499 = icmp ult i64 %i.kq, 4
  br i1 %min.iters.check499, label %.lr.ph54.i170.preheader, label %vector.memcheck493

vector.memcheck493:                               ; preds = %iter.check517
  %i.kr = sub i64 %i.kp, %.0.lcssa71.pre-phi.i163
  %i.ks = shl i64 %i.kr, 1
  %scevgep494 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ks
  %bound0495 = icmp ult ptr %.043.lcssa.i164, %scevgep.i169
  %bound1496 = icmp ult ptr %.0.lcssa.i165, %scevgep494
  %found.conflict497 = and i1 %bound0495, %bound1496
  br i1 %found.conflict497, label %.lr.ph54.i170.preheader, label %vector.main.loop.iter.check500

vector.main.loop.iter.check500:                   ; preds = %vector.memcheck493
  %min.iters.check501 = icmp ult i64 %i.kq, 16
  br i1 %min.iters.check501, label %vec.epilog.ph521, label %vector.ph502

vector.ph502:                                     ; preds = %vector.main.loop.iter.check500
  %n.mod.vf503 = and i64 %i.kq, 12
  %n.vec504 = and i64 %i.kq, -16                  ; 5 uses
  %i.kt = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec504
  %i.ku = shl i64 %n.vec504, 1
  %i.kv = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ku ; 2 uses
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph502
  %index506 = phi i64 [ 0, %vector.ph502 ], [ %index.next511, %vector.body505 ] ; 3 uses
  %next.gep507 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index506 ; 2 uses
  %i.kw = shl i64 %index506, 1
  %next.gep508 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep507, i64 8
  %wide.load509 = load <8 x i8>, ptr %next.gep507, align 1, !tbaa !205, !alias.scope !423
  %wide.load510 = load <8 x i8>, ptr %i.kx, align 1, !tbaa !205, !alias.scope !423
  %i.ky = zext <8 x i8> %wide.load509 to <8 x i16>
  %i.kz = zext <8 x i8> %wide.load510 to <8 x i16>
  %i.la = getelementptr i8, ptr %next.gep508, i64 16
  store <8 x i16> %i.ky, ptr %next.gep508, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  store <8 x i16> %i.kz, ptr %i.la, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next511 = add nuw i64 %index506, 16      ; 2 uses
  %i.lb = icmp eq i64 %index.next511, %n.vec504
  br i1 %i.lb, label %middle.block512, label %vector.body505, !llvm.loop !428

end_hunk_0
