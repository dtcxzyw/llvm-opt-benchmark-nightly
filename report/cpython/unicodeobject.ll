inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@_PyUnicode_EncodeUTF16:bb.a
  %i.fe = icmp eq i32 %i.k, 2
  %i.ff = getelementptr [4 x i8], ptr %.0.i, i64 %.val135 ; 4 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = getelementptr [2 x i8], ptr %.0.i, i64 %.val135 ; 5 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph280, %raise_encode_exception.exit
  %.091279 = phi i64 [ 0, %.lr.ph280 ], [ %i.jt, %raise_encode_exception.exit ] ; 4 uses
  %.1216278 = phi ptr [ %.0, %.lr.ph280 ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.fj = sub i64 %.val135, %.091279              ; 11 uses
  br i1 %i.fe, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fk = getelementptr [2 x i8], ptr %.0.i, i64 %.091279 ; 6 uses
  %i.fl = and i64 %i.fj, -4
  %i.fm = getelementptr [2 x i8], ptr %i.fk, i64 %i.fl ; 3 uses
  %i.fn = icmp ult ptr %i.fk, %i.fm               ; 2 uses
  br i1 %i.ax, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.fn, label %.lr.ph.i141, label %._crit_edge.i

.lr.ph.i141:                                      ; preds = %bb.x, %bb.y
  %.077114.i = phi ptr [ %i.gc, %bb.y ], [ %i.fk, %bb.x ] ; 7 uses
  %.082113.i = phi ptr [ %i.gd, %bb.y ], [ %.1216278, %bb.x ] ; 6 uses
  %i.fo = load <4 x i16>, ptr %.077114.i, align 2, !tbaa !208
  %i.fp = xor <4 x i16> %i.fo, splat (i16 -10240)
  %i.fq = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.fp)
  %i.fr = icmp ult i16 %i.fq, 2048
  br i1 %i.fr, label %._crit_edge.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i141
  %i.fs = load i16, ptr %.077114.i, align 2, !tbaa !208
  %i.ft = getelementptr i8, ptr %.077114.i, i64 6
  %i.fu = getelementptr i8, ptr %.077114.i, i64 4
  %i.fv = getelementptr i8, ptr %.077114.i, i64 2
  store i16 %i.fs, ptr %.082113.i, align 2, !tbaa !208
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !208
  %i.fx = getelementptr i8, ptr %.082113.i, i64 2
  store i16 %i.fw, ptr %i.fx, align 2, !tbaa !208
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !208
  %i.fz = getelementptr i8, ptr %.082113.i, i64 4
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !208
  %i.ga = load i16, ptr %i.ft, align 2, !tbaa !208
  %i.gb = getelementptr i8, ptr %.082113.i, i64 6
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !208
  %i.gc = getelementptr i8, ptr %.077114.i, i64 8 ; 3 uses
  %i.gd = getelementptr i8, ptr %.082113.i, i64 8 ; 2 uses
  %i.ge = icmp ult ptr %i.gc, %i.fm
  br i1 %i.ge, label %.lr.ph.i141, label %._crit_edge.i, !llvm.loop !419

._crit_edge.i:                                    ; preds = %bb.y, %.lr.ph.i141, %bb.x
  %.082.lcssa.i = phi ptr [ %.1216278, %bb.x ], [ %i.gd, %bb.y ], [ %.082113.i, %.lr.ph.i141 ] ; 2 uses
  %.077.lcssa.i = phi ptr [ %i.fk, %bb.x ], [ %i.gc, %bb.y ], [ %.077114.i, %.lr.ph.i141 ] ; 2 uses
  %i.gf = icmp ult ptr %.077.lcssa.i, %i.fh
  br i1 %i.gf, label %.lr.ph122.i, label %ucs2lib_utf16_encode.exit

.lr.ph122.i:                                      ; preds = %._crit_edge.i, %bb.z
  %.1120.i = phi ptr [ %i.gg, %bb.z ], [ %.077.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.183119.i = phi ptr [ %.284.i, %bb.z ], [ %.082.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.gg = getelementptr i8, ptr %.1120.i, i64 2   ; 3 uses
  %i.gh = load i16, ptr %.1120.i, align 2, !tbaa !208 ; 2 uses
  %i.gi = and i16 %i.gh, -2048
  %or.cond.i = icmp eq i16 %i.gi, -10240
  br i1 %or.cond.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph122.i
  %.284.i = getelementptr i8, ptr %.183119.i, i64 2 ; 2 uses
  store i16 %i.gh, ptr %.183119.i, align 2, !tbaa !208
  %i.gj = icmp ult ptr %i.gg, %i.fh
  br i1 %i.gj, label %.lr.ph122.i, label %ucs2lib_utf16_encode.exit, !llvm.loop !420

bb.aa:                                            ; preds = %bb.w
  br i1 %i.fn, label %.lr.ph127.i, label %._crit_edge128.i

.lr.ph127.i:                                      ; preds = %bb.aa, %bb.ab
  %.3125.i = phi ptr [ %i.hc, %bb.ab ], [ %i.fk, %bb.aa ] ; 7 uses
  %.587124.i = phi ptr [ %i.hd, %bb.ab ], [ %.1216278, %bb.aa ] ; 6 uses
  %i.gk = load <4 x i16>, ptr %.3125.i, align 2, !tbaa !208
  %i.gl = xor <4 x i16> %i.gk, splat (i16 -10240)
  %i.gm = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.gl)
  %i.gn = icmp ult i16 %i.gm, 2048
  br i1 %i.gn, label %._crit_edge128.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph127.i
  %i.go = load i16, ptr %.3125.i, align 2, !tbaa !208
  %i.gp = getelementptr i8, ptr %.3125.i, i64 6
  %i.gq = getelementptr i8, ptr %.3125.i, i64 4
  %i.gr = getelementptr i8, ptr %.3125.i, i64 2
  %i.gs = call i16 @llvm.bswap.i16(i16 %i.go)
  store i16 %i.gs, ptr %.587124.i, align 2, !tbaa !208
  %i.gt = load i16, ptr %i.gr, align 2, !tbaa !208
  %i.gu = call i16 @llvm.bswap.i16(i16 %i.gt)
  %i.gv = getelementptr i8, ptr %.587124.i, i64 2
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !208
  %i.gw = load i16, ptr %i.gq, align 2, !tbaa !208
  %i.gx = call i16 @llvm.bswap.i16(i16 %i.gw)
  %i.gy = getelementptr i8, ptr %.587124.i, i64 4
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !208
  %i.gz = load i16, ptr %i.gp, align 2, !tbaa !208
  %i.ha = call i16 @llvm.bswap.i16(i16 %i.gz)
  %i.hb = getelementptr i8, ptr %.587124.i, i64 6
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !208
  %i.hc = getelementptr i8, ptr %.3125.i, i64 8   ; 3 uses
  %i.hd = getelementptr i8, ptr %.587124.i, i64 8 ; 2 uses
  %i.he = icmp ult ptr %i.hc, %i.fm
  br i1 %i.he, label %.lr.ph127.i, label %._crit_edge128.i, !llvm.loop !421

._crit_edge128.i:                                 ; preds = %bb.ab, %.lr.ph127.i, %bb.aa
  %.587.lcssa.i = phi ptr [ %.1216278, %bb.aa ], [ %i.hd, %bb.ab ], [ %.587124.i, %.lr.ph127.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.fk, %bb.aa ], [ %i.hc, %bb.ab ], [ %.3125.i, %.lr.ph127.i ] ; 2 uses
  %i.hf = icmp ult ptr %.3.lcssa.i, %i.fh
  br i1 %i.hf, label %.lr.ph137.i, label %ucs2lib_utf16_encode.exit

.lr.ph137.i:                                      ; preds = %._crit_edge128.i, %bb.ac
  %.4135.i = phi ptr [ %i.hg, %bb.ac ], [ %.3.lcssa.i, %._crit_edge128.i ] ; 2 uses
  %.688134.i = phi ptr [ %.7.i, %bb.ac ], [ %.587.lcssa.i, %._crit_edge128.i ] ; 3 uses
  %i.hg = getelementptr i8, ptr %.4135.i, i64 2   ; 3 uses
  %i.hh = load i16, ptr %.4135.i, align 2, !tbaa !208 ; 2 uses
  %i.hi = and i16 %i.hh, -2048
  %or.cond166.i = icmp eq i16 %i.hi, -10240
  br i1 %or.cond166.i, label %.loopexit.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph137.i
  %i.hj = call i16 @llvm.bswap.i16(i16 %i.hh)
  %.7.i = getelementptr i8, ptr %.688134.i, i64 2 ; 2 uses
  store i16 %i.hj, ptr %.688134.i, align 2, !tbaa !208
  %i.hk = icmp ult ptr %i.hg, %i.fh
  br i1 %i.hk, label %.lr.ph137.i, label %ucs2lib_utf16_encode.exit, !llvm.loop !422

.loopexit.i:                                      ; preds = %.lr.ph122.i, %.lr.ph137.i
  %.11.i = phi ptr [ %.688134.i, %.lr.ph137.i ], [ %.183119.i, %.lr.ph122.i ]
  %.6.i = phi ptr [ %i.hg, %.lr.ph137.i ], [ %i.gg, %.lr.ph122.i ]
  %i.hl = ptrtoint ptr %.6.i to i64
  %i.hm = sub i64 %i.fi, %i.hl
  %i.hn = ashr exact i64 %i.hm, 1
  %.neg.i = xor i64 %i.hn, -1
  %i.ho = add i64 %i.fj, %.neg.i
  br label %ucs2lib_utf16_encode.exit

bb.ad:                                            ; preds = %bb.v
  %i.hp = getelementptr [4 x i8], ptr %.0.i, i64 %.091279 ; 3 uses
  %i.hq = icmp ult ptr %i.hp, %i.ff               ; 2 uses
  br i1 %i.ax, label %.preheader.i149, label %.preheader68.i

.preheader68.i:                                   ; preds = %bb.ad
  br i1 %i.hq, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.preheader.i149:                                  ; preds = %bb.ad
  br i1 %i.hq, label %.lr.ph78.i, label %ucs2lib_utf16_encode.exit

.lr.ph.i146:                                      ; preds = %.preheader68.i, %bb.aj
  %.05075.i = phi ptr [ %i.hr, %bb.aj ], [ %i.hp, %.preheader68.i ] ; 2 uses
  %.05174.i = phi ptr [ %.253.i, %bb.aj ], [ %.1216278, %.preheader68.i ] ; 8 uses
  %i.hr = getelementptr i8, ptr %.05075.i, i64 4  ; 3 uses
  %i.hs = load i32, ptr %.05075.i, align 4, !tbaa !7 ; 7 uses
  %i.ht = icmp ult i32 %i.hs, 55296
  br i1 %i.ht, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i146
  %i.hu = trunc nuw i32 %i.hs to i16
  %i.hv = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.hu, ptr %.05174.i, align 2, !tbaa !208
  br label %bb.aj

bb.af:                                            ; preds = %.lr.ph.i146
  %i.hw = icmp ult i32 %i.hs, 57344
  br i1 %i.hw, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hx = icmp ugt i32 %i.hs, 65535
  br i1 %i.hx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hy = lshr i32 %i.hs, 10
  %i.hz = trunc i32 %i.hy to i16
  %i.ia = add i16 %i.hz, -10304
  store i16 %i.ia, ptr %.05174.i, align 2, !tbaa !208
  %i.ib = trunc i32 %i.hs to i16
  %i.ic = and i16 %i.ib, 1023
  %i.id = or disjoint i16 %i.ic, -9216
  %i.ie = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !208
  %i.if = getelementptr i8, ptr %.05174.i, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ig = trunc nuw i32 %i.hs to i16
  %i.ih = getelementptr i8, ptr %.05174.i, i64 2
  store i16 %i.ig, ptr %.05174.i, align 2, !tbaa !208
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %.253.i = phi ptr [ %i.ih, %bb.ai ], [ %i.hv, %bb.ae ], [ %i.if, %bb.ah ] ; 2 uses
  %i.ii = icmp ult ptr %i.hr, %i.ff
  br i1 %i.ii, label %.lr.ph.i146, label %ucs2lib_utf16_encode.exit

.lr.ph78.i:                                       ; preds = %.preheader.i149, %bb.ap
  %.177.i = phi ptr [ %i.ij, %bb.ap ], [ %i.hp, %.preheader.i149 ] ; 2 uses
  %.376.i = phi ptr [ %.5.i, %bb.ap ], [ %.1216278, %.preheader.i149 ] ; 8 uses
  %i.ij = getelementptr i8, ptr %.177.i, i64 4    ; 3 uses
  %i.ik = load i32, ptr %.177.i, align 4, !tbaa !7 ; 9 uses
  %i.il = icmp ult i32 %i.ik, 55296
  br i1 %i.il, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph78.i
  %i.im = shl nuw nsw i32 %i.ik, 8
  %i.in = lshr i32 %i.ik, 8
  %i.io = or disjoint i32 %i.im, %i.in
  %i.ip = trunc i32 %i.io to i16
  %i.iq = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.ip, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.al:                                            ; preds = %.lr.ph78.i
  %i.ir = icmp ult i32 %i.ik, 57344
  br i1 %i.ir, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.is = icmp ugt i32 %i.ik, 65535
  br i1 %i.is, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.it = lshr i32 %i.ik, 10
  %3 = add nuw nsw i32 %i.it, 55232               ; 2 uses
  %i.iu = and i32 %i.ik, 1023                     ; 2 uses
  %4 = shl nuw nsw i32 %3, 8
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  %7 = or disjoint i32 %6, %4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %.376.i, align 2, !tbaa !208
  %9 = shl nuw nsw i32 %i.iu, 8
  %10 = lshr i32 %i.iu, 8
  %11 = or disjoint i32 %10, %9
  %12 = trunc i32 %11 to i16
  %13 = or disjoint i16 %12, 220
  %14 = getelementptr i8, ptr %.376.i, i64 2
  store i16 %13, ptr %14, align 2, !tbaa !208
  %i.iv = getelementptr i8, ptr %.376.i, i64 4
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.iw = shl nuw nsw i32 %i.ik, 8
  %i.ix = lshr i32 %i.ik, 8
  %i.iy = or disjoint i32 %i.iw, %i.ix
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = getelementptr i8, ptr %.376.i, i64 2
  store i16 %i.iz, ptr %.376.i, align 2, !tbaa !208
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.5.i = phi ptr [ %i.ja, %bb.ao ], [ %i.iq, %bb.ak ], [ %i.iv, %bb.an ] ; 2 uses
  %i.jb = icmp ult ptr %i.ij, %i.ff
  br i1 %i.jb, label %.lr.ph78.i, label %ucs2lib_utf16_encode.exit

.thread.i:                                        ; preds = %bb.af, %bb.al
  %.7.i147 = phi ptr [ %.376.i, %bb.al ], [ %.05174.i, %bb.af ]
  %.2.i = phi ptr [ %i.ij, %bb.al ], [ %i.hr, %bb.af ]
  %i.jc = ptrtoint ptr %.2.i to i64
  %i.jd = sub i64 %i.fg, %i.jc
  %i.je = ashr exact i64 %i.jd, 2
  %.neg.i148 = xor i64 %i.je, -1
  %i.jf = add i64 %i.fj, %.neg.i148
  br label %ucs2lib_utf16_encode.exit

ucs2lib_utf16_encode.exit:                        ; preds = %bb.aj, %bb.ap, %bb.z, %bb.ac, %.thread.i, %.preheader.i149, %.preheader68.i, %.loopexit.i, %._crit_edge128.i, %._crit_edge.i
  %.2217 = phi ptr [ %.7.i, %bb.ac ], [ %.11.i, %.loopexit.i ], [ %.5.i, %bb.ap ], [ %.587.lcssa.i, %._crit_edge128.i ], [ %.082.lcssa.i, %._crit_edge.i ], [ %.7.i147, %.thread.i ], [ %.284.i, %bb.z ], [ %.1216278, %.preheader.i149 ], [ %.1216278, %.preheader68.i ], [ %.253.i, %bb.aj ] ; 3 uses
  %.pn = phi i64 [ %i.fj, %bb.ac ], [ %i.ho, %.loopexit.i ], [ %i.fj, %bb.ap ], [ %i.fj, %._crit_edge128.i ], [ %i.fj, %._crit_edge.i ], [ %i.jf, %.thread.i ], [ %i.fj, %bb.z ], [ %i.fj, %.preheader.i149 ], [ %i.fj, %.preheader68.i ], [ %i.fj, %bb.aj ]
  %.192 = add i64 %.pn, %.091279                  ; 6 uses
  %i.jg = icmp eq i64 %.192, %.val135
  br i1 %i.jg, label %._crit_edge, label %bb.aq

bb.aq:                                            ; preds = %ucs2lib_utf16_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.jh = add i64 %.192, 1                        ; 3 uses
  %i.ji = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %.095, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.192, i64 noundef %i.jh, ptr noundef %i.c) ; 13 uses
  %.not123 = icmp eq ptr %i.ji, null
  br i1 %.not123, label %bb.bo, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jj = getelementptr i8, ptr %i.ji, i64 8      ; 2 uses
  %.val128 = load ptr, ptr %i.jj, align 8, !tbaa !197
  %i.jk = getelementptr i8, ptr %.val128, i64 168
  %.val131 = load i64, ptr %i.jk, align 8, !tbaa !198 ; 2 uses
  %i.jl = and i64 %.val131, 134217728
  %.not124 = icmp eq i64 %i.jl, 0
  %i.jm = getelementptr i8, ptr %i.ji, i64 16
  %.val134 = load i64, ptr %i.jm, align 8, !tbaa !193 ; 9 uses
  br i1 %.not124, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jn = and i64 %.val134, 1
  %.not126 = icmp eq i64 %i.jn, 0
  br i1 %.not126, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jh, ptr noundef nonnull @.str.77)
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i150 = icmp eq ptr %i.jo, null
  br i1 %.not.i150, label %.loopexit, label %.loopexit.sink.split

bb.au:                                            ; preds = %bb.as
  %i.jp = ashr exact i64 %.val134, 1
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.jq = getelementptr i8, ptr %i.ji, i64 32
  %.val133 = load i32, ptr %i.jq, align 8
  %i.jr = and i32 %.val133, 64
  %.not125 = icmp eq i32 %i.jr, 0
  br i1 %.not125, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call fastcc void @make_encode_exception(ptr noundef nonnull %i.b, ptr noundef nonnull %.095, ptr noundef %0, i64 noundef %.192, i64 noundef %i.jh, ptr noundef nonnull @.str.77)
  %i.js = load ptr, ptr %i.b, align 8, !tbaa !194 ; 2 uses
  %.not.i151 = icmp eq ptr %i.js, null
  br i1 %.not.i151, label %.loopexit, label %.loopexit.sink.split

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.089 = phi i64 [ %i.jp, %bb.au ], [ %.val134, %bb.av ]
  %i.jt = load i64, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.ju = sub i64 %.192, %i.jt
  %i.jv = add i64 %i.ju, %.089                    ; 2 uses
  %i.jw = icmp sgt i64 %i.jv, 0
  br i1 %i.jw, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jx = shl nuw i64 %i.jv, 1
  %i.jy = call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %i.ew, i64 noundef %i.jx, ptr noundef %.2217) #37 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %.loopexit, label %._crit_edge324

._crit_edge324:                                   ; preds = %bb.ay
  %.val.pre = load ptr, ptr %i.jj, align 8, !tbaa !197
  %.phi.trans.insert = getelementptr i8, ptr %.val.pre, i64 168
  %.val130.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !198
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge324, %bb.ax
  %.val130 = phi i64 [ %.val130.pre, %._crit_edge324 ], [ %.val131, %bb.ax ]
  %.3 = phi ptr [ %i.jy, %._crit_edge324 ], [ %.2217, %bb.ax ] ; 6 uses
  %i.ka = and i64 %.val130, 134217728
  %.not127 = icmp eq i64 %i.ka, 0
  %i.kb = getelementptr i8, ptr %i.ji, i64 32     ; 2 uses
  br i1 %.not127, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.3, ptr align 1 %i.kb, i64 %.val134, i1 false)
  %i.kc = sdiv i64 %.val134, 2
  %i.kd = getelementptr [2 x i8], ptr %.3, i64 %i.kc
  br label %ucs1lib_utf16_encode.exit194

bb.bb:                                            ; preds = %bb.az
  %.val.i153 = load i32, ptr %i.kb, align 8       ; 2 uses
  %i.ke = and i32 %.val.i153, 32
  %.not.i154 = icmp eq i32 %i.ke, 0
  br i1 %.not.i154, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kf = and i32 %.val.i153, 64
  %.not.i.i155 = icmp eq i32 %i.kf, 0
  %.0.v.i.i156 = select i1 %.not.i.i155, i64 56, i64 40
  %.0.i.i157 = getelementptr i8, ptr %i.ji, i64 %.0.v.i.i156
  br label %_PyUnicode_DATA.exit160

bb.bd:                                            ; preds = %bb.bb
  %i.kg = getelementptr i8, ptr %i.ji, i64 56
  %.val4.i159 = load ptr, ptr %i.kg, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit160

_PyUnicode_DATA.exit160:                          ; preds = %bb.bc, %bb.bd
  %.0.i158 = phi ptr [ %.0.i.i157, %bb.bc ], [ %.val4.i159, %bb.bd ] ; 8 uses
  %i.kh = ptrtoint ptr %.0.i158 to i64            ; 4 uses
  %i.ki = getelementptr i8, ptr %.0.i158, i64 %.val134 ; 2 uses
  %i.kj = and i64 %.val134, -4
  %i.kk = getelementptr i8, ptr %.0.i158, i64 %i.kj ; 3 uses
  %i.kl = icmp ult ptr %.0.i158, %i.kk            ; 2 uses
  br i1 %i.ax, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_PyUnicode_DATA.exit160
  br i1 %i.kl, label %.lr.ph.i174, label %.preheader47.i162

.preheader47.loopexit.i177:                       ; preds = %.lr.ph.i174
  %.pre75.i178 = ptrtoint ptr %i.lu to i64
  br label %.preheader47.i162

.preheader47.i162:                                ; preds = %.preheader47.loopexit.i177, %bb.be
  %.0.lcssa71.pre-phi.i163 = phi i64 [ %.pre75.i178, %.preheader47.loopexit.i177 ], [ %i.kh, %bb.be ] ; 2 uses
  %.043.lcssa.i164 = phi ptr [ %i.lv, %.preheader47.loopexit.i177 ], [ %.3, %bb.be ] ; 9 uses
  %.0.lcssa.i165 = phi ptr [ %i.lu, %.preheader47.loopexit.i177 ], [ %.0.i158, %bb.be ] ; 9 uses
  %i.km = icmp ult ptr %.0.lcssa.i165, %i.ki
  br i1 %i.km, label %iter.check518, label %ucs1lib_utf16_encode.exit194

iter.check518:                                    ; preds = %.preheader47.i162
  %i.kn = add i64 %.val134, %i.kh                 ; 2 uses
  %i.ko = sub i64 %i.kn, %.0.lcssa71.pre-phi.i163 ; 8 uses
  %scevgep.i169 = getelementptr i8, ptr %.0.lcssa.i165, i64 %i.ko ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.ko, 4
  br i1 %min.iters.check500, label %.lr.ph54.i170.preheader, label %vector.memcheck494

vector.memcheck494:                               ; preds = %iter.check518
  %i.kp = sub i64 %i.kn, %.0.lcssa71.pre-phi.i163
  %i.kq = shl i64 %i.kp, 1
  %scevgep495 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.kq
  %bound0496 = icmp ult ptr %.043.lcssa.i164, %scevgep.i169
  %bound1497 = icmp ult ptr %.0.lcssa.i165, %scevgep495
  %found.conflict498 = and i1 %bound0496, %bound1497
  br i1 %found.conflict498, label %.lr.ph54.i170.preheader, label %vector.main.loop.iter.check501

vector.main.loop.iter.check501:                   ; preds = %vector.memcheck494
  %min.iters.check502 = icmp ult i64 %i.ko, 16
  br i1 %min.iters.check502, label %vec.epilog.ph522, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check501
  %n.mod.vf504 = and i64 %i.ko, 12
  %n.vec505 = and i64 %i.ko, -16                  ; 5 uses
  %i.kr = getelementptr i8, ptr %.0.lcssa.i165, i64 %n.vec505
  %i.ks = shl i64 %n.vec505, 1
  %i.kt = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ks ; 2 uses
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph503
  %index507 = phi i64 [ 0, %vector.ph503 ], [ %index.next512, %vector.body506 ] ; 3 uses
  %next.gep508 = getelementptr i8, ptr %.0.lcssa.i165, i64 %index507 ; 2 uses
  %i.ku = shl i64 %index507, 1
  %next.gep509 = getelementptr i8, ptr %.043.lcssa.i164, i64 %i.ku ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep508, i64 8
  %wide.load510 = load <8 x i8>, ptr %next.gep508, align 1, !tbaa !205, !alias.scope !423
  %wide.load511 = load <8 x i8>, ptr %i.kv, align 1, !tbaa !205, !alias.scope !423
  %i.kw = zext <8 x i8> %wide.load510 to <8 x i16>
  %i.kx = zext <8 x i8> %wide.load511 to <8 x i16>
  %i.ky = getelementptr i8, ptr %next.gep509, i64 16
  store <8 x i16> %i.kw, ptr %next.gep509, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  store <8 x i16> %i.kx, ptr %i.ky, align 2, !tbaa !208, !alias.scope !426, !noalias !423
  %index.next512 = add nuw i64 %index507, 16      ; 2 uses
  %i.kz = icmp eq i64 %index.next512, %n.vec505
  br i1 %i.kz, label %middle.block513, label %vector.body506, !llvm.loop !428

end_hunk_0
