inline.NumInlined: 51
inline.NumDeleted: 4
begin_hunk_0_@computeBiPredSSE1:bb.a
  br i1 %.not70.us141, label %.preheader.us135.preheader, label %.loopexit

.preheader.us135.preheader:                       ; preds = %.preheader.lr.ph.split.us140
  %scevgep178 = getelementptr i8, ptr %ref2_line.promoted108.us, i64 %i.dm
  %scevgep179 = getelementptr i8, ptr %i.ed, i64 %i.dm
  br label %._crit_edge122.us

._crit_edge122.us:                                ; preds = %bb.g, %.preheader.us135.preheader
  %.lcssa218.sink = phi ptr [ %scevgep178, %.preheader.us135.preheader ], [ %i.gg, %bb.g ]
  %.lcssa217.sink = phi ptr [ %scevgep179, %.preheader.us135.preheader ], [ %i.gh, %bb.g ]
  %.us-phi127.us = phi i32 [ %.062.lcssa, %.preheader.us135.preheader ], [ %i.ht, %bb.g ] ; 2 uses
  store ptr %.lcssa218.sink, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa217.sink, ptr @ref1_line, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.ee, ptr @src_line, align 8, !tbaa !33
  %i.ef = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !8
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !42
  %i.ek = tail call ptr %i.ei(ptr noundef %i.ej, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.ek, ptr @ref2_line, align 8, !tbaa !33
  %i.el = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !42
  %i.eq = tail call ptr %i.eo(ptr noundef %i.ep, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.eq, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted108.us.1 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.cb, label %.preheader.us.us.preheader.1, label %.preheader.us135.preheader.1

.preheader.us135.preheader.1:                     ; preds = %._crit_edge122.us
  %scevgep178.1 = getelementptr i8, ptr %ref2_line.promoted108.us.1, i64 %i.dm
  %scevgep179.1 = getelementptr i8, ptr %i.eq, i64 %i.dm
  store ptr %scevgep178.1, ptr @ref2_line, align 8, !tbaa !33
  store ptr %scevgep179.1, ptr @ref1_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.us.us.preheader.1:                     ; preds = %._crit_edge122.us
  %src_line.promoted114.us.1 = load ptr, ptr @src_line, align 8
  br label %.preheader.us.us.1

.preheader.us.us.1:                               ; preds = %bb.f, %.preheader.us.us.preheader.1
  %.3121.us.us.1 = phi i32 [ %i.gb, %bb.f ], [ %.us-phi127.us, %.preheader.us.us.preheader.1 ]
  %.166120.us.us.1 = phi i32 [ %i.gf, %bb.f ], [ 0, %.preheader.us.us.preheader.1 ]
  %.lcssa107109119.us.us.1 = phi ptr [ %i.gd, %bb.f ], [ %ref2_line.promoted108.us.1, %.preheader.us.us.preheader.1 ] ; 2 uses
  %.lcssa106112118.us.us.1 = phi ptr [ %i.ge, %bb.f ], [ %i.eq, %.preheader.us.us.preheader.1 ] ; 2 uses
  %.lcssa105116117.us.us.1 = phi ptr [ %scevgep180.1, %bb.f ], [ %src_line.promoted114.us.1, %.preheader.us.us.preheader.1 ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.us.1
  %.4104.us.us.1 = phi i32 [ %.3121.us.us.1, %.preheader.us.us.1 ], [ %i.gb, %bb.e ]
  %.168103.us.us.1 = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.gc, %bb.e ]
  %i.er = phi ptr [ %.lcssa105116117.us.us.1, %.preheader.us.us.1 ], [ %i.fl, %bb.e ] ; 3 uses
  %i.es = phi ptr [ %.lcssa106112118.us.us.1, %.preheader.us.us.1 ], [ %i.fo, %bb.e ] ; 3 uses
  %i.et = phi ptr [ %.lcssa107109119.us.us.1, %.preheader.us.us.1 ], [ %i.fr, %bb.e ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !40
  %i.ew = zext i16 %i.ev to i32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ey = load i16, ptr %i.es, align 2, !tbaa !40
  %i.ez = zext i16 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 2
  %i.fb = load i16, ptr %i.et, align 2, !tbaa !40
  %i.fc = zext i16 %i.fb to i32
  %i.fd = add nuw nsw i32 %i.ez, 1
  %i.fe = add nuw nsw i32 %i.fd, %i.fc
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = sub nsw i32 %i.ew, %i.ff
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = add nsw i32 %i.fj, %.4104.us.us.1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fm = load i16, ptr %i.eu, align 2, !tbaa !40
  %i.fn = zext i16 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.fp = load i16, ptr %i.ex, align 2, !tbaa !40
  %i.fq = zext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fs = load i16, ptr %i.fa, align 2, !tbaa !40
  %i.ft = zext i16 %i.fs to i32
  %i.fu = add nuw nsw i32 %i.fq, 1
  %i.fv = add nuw nsw i32 %i.fu, %i.ft
  %i.fw = lshr i32 %i.fv, 1
  %i.fx = sub nsw i32 %i.fn, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = add nsw i32 %i.fk, %i.ga                ; 5 uses
  %i.gc = add nuw nsw i32 %.168103.us.us.1, 1     ; 2 uses
  %exitcond183.1.not = icmp eq i32 %i.gc, %i.bv
  br i1 %exitcond183.1.not, label %._crit_edge.us124.us.1, label %bb.e, !llvm.loop !87

._crit_edge.us124.us.1:                           ; preds = %bb.e
  %scevgep180.1 = getelementptr i8, ptr %.lcssa105116117.us.us.1, i64 %i.dq ; 3 uses
  %scevgep181.1 = getelementptr i8, ptr %.lcssa106112118.us.us.1, i64 %i.dq ; 2 uses
  %scevgep182.1 = getelementptr i8, ptr %.lcssa107109119.us.us.1, i64 %i.dq ; 2 uses
  %.not70.us.us.1 = icmp slt i32 %i.gb, %3
  br i1 %.not70.us.us.1, label %bb.f, label %.loopexit.split.us

bb.f:                                             ; preds = %._crit_edge.us124.us.1
  %i.gd = getelementptr inbounds [2 x i8], ptr %scevgep182.1, i64 %i.cc ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr %scevgep181.1, i64 %i.cc ; 2 uses
  %i.gf = add nuw nsw i32 %.166120.us.us.1, 1     ; 2 uses
  %exitcond184.1.not = icmp eq i32 %i.gf, %.fr149
  br i1 %exitcond184.1.not, label %._crit_edge122.split.us.us.1, label %.preheader.us.us.1, !llvm.loop !88

._crit_edge122.split.us.us.1:                     ; preds = %bb.f
  store ptr %i.gd, ptr @ref2_line, align 8, !tbaa !33
  store ptr %i.ge, ptr @ref1_line, align 8, !tbaa !33
  store ptr %scevgep180.1, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %bb.g
  %.3121.us.us = phi i32 [ %i.ht, %bb.g ], [ %.062.lcssa, %.preheader.us.us.preheader ]
  %.166120.us.us = phi i32 [ %i.gi, %bb.g ], [ 0, %.preheader.us.us.preheader ]
  %.lcssa107109119.us.us = phi ptr [ %i.gg, %bb.g ], [ %ref2_line.promoted108.us, %.preheader.us.us.preheader ] ; 2 uses
  %.lcssa106112118.us.us = phi ptr [ %i.gh, %bb.g ], [ %i.ed, %.preheader.us.us.preheader ] ; 2 uses
  %.lcssa105116117.us.us = phi ptr [ %scevgep180, %bb.g ], [ %src_line.promoted114.us, %.preheader.us.us.preheader ] ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.us124.us
  %i.gg = getelementptr inbounds [2 x i8], ptr %scevgep182, i64 %i.cc ; 2 uses
  %i.gh = getelementptr inbounds [2 x i8], ptr %scevgep181, i64 %i.cc ; 2 uses
  %i.gi = add nuw nsw i32 %.166120.us.us, 1       ; 2 uses
  %exitcond184.not = icmp eq i32 %i.gi, %.fr149
  br i1 %exitcond184.not, label %._crit_edge122.us, label %.preheader.us.us, !llvm.loop !88

bb.h:                                             ; preds = %bb.h, %.preheader.us.us
  %.4104.us.us = phi i32 [ %.3121.us.us, %.preheader.us.us ], [ %i.ht, %bb.h ]
  %.168103.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.hu, %bb.h ]
  %i.gj = phi ptr [ %.lcssa105116117.us.us, %.preheader.us.us ], [ %i.hd, %bb.h ] ; 3 uses
  %i.gk = phi ptr [ %.lcssa106112118.us.us, %.preheader.us.us ], [ %i.hg, %bb.h ] ; 3 uses
  %i.gl = phi ptr [ %.lcssa107109119.us.us, %.preheader.us.us ], [ %i.hj, %bb.h ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = load i16, ptr %i.gj, align 2, !tbaa !40
  %i.go = zext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gq = load i16, ptr %i.gk, align 2, !tbaa !40
  %i.gr = zext i16 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.gt = load i16, ptr %i.gl, align 2, !tbaa !40
  %i.gu = zext i16 %i.gt to i32
  %i.gv = add nuw nsw i32 %i.gr, 1
  %i.gw = add nuw nsw i32 %i.gv, %i.gu
  %i.gx = lshr i32 %i.gw, 1
  %i.gy = sub nsw i32 %i.go, %i.gx
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %i.hc = add nsw i32 %i.hb, %.4104.us.us
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.he = load i16, ptr %i.gm, align 2, !tbaa !40
  %i.hf = zext i16 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.hh = load i16, ptr %i.gp, align 2, !tbaa !40
  %i.hi = zext i16 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.hk = load i16, ptr %i.gs, align 2, !tbaa !40
  %i.hl = zext i16 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hi, 1
  %i.hn = add nuw nsw i32 %i.hm, %i.hl
  %i.ho = lshr i32 %i.hn, 1
  %i.hp = sub nsw i32 %i.hf, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = add nsw i32 %i.hc, %i.hs                ; 5 uses
  %i.hu = add nuw nsw i32 %.168103.us.us, 1       ; 2 uses
  %exitcond183.not = icmp eq i32 %i.hu, %i.bv
  br i1 %exitcond183.not, label %._crit_edge.us124.us, label %bb.h, !llvm.loop !87

._crit_edge.us124.us:                             ; preds = %bb.h
  %scevgep180 = getelementptr i8, ptr %.lcssa105116117.us.us, i64 %i.dq ; 2 uses
  %scevgep181 = getelementptr i8, ptr %.lcssa106112118.us.us, i64 %i.dq ; 2 uses
  %scevgep182 = getelementptr i8, ptr %.lcssa107109119.us.us, i64 %i.dq ; 2 uses
  %.not70.us.us = icmp slt i32 %i.ht, %3
  br i1 %.not70.us.us, label %bb.g, label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %._crit_edge.us124.us, %._crit_edge.us124.us.1
  %.lcssa160.lcssa = phi ptr [ %scevgep180.1, %._crit_edge.us124.us.1 ], [ %scevgep180, %._crit_edge.us124.us ]
  %.lcssa158.lcssa = phi ptr [ %scevgep181.1, %._crit_edge.us124.us.1 ], [ %scevgep181, %._crit_edge.us124.us ]
  %.lcssa156.lcssa = phi ptr [ %scevgep182.1, %._crit_edge.us124.us.1 ], [ %scevgep182, %._crit_edge.us124.us ]
  %.lcssa154.lcssa = phi i32 [ %i.gb, %._crit_edge.us124.us.1 ], [ %i.ht, %._crit_edge.us124.us ]
  store ptr %.lcssa156.lcssa, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa158.lcssa, ptr @ref1_line, align 8, !tbaa !33
  store ptr %.lcssa160.lcssa, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.lr.ph.split.us140, %._crit_edge122.split.us.us.1, %.preheader.us135.preheader.1, %.split.preheader, %.loopexit74.split.us, %.preheader73.lr.ph.split, %.loopexit.split.us, %._crit_edge96
  %.1 = phi i32 [ %.062.lcssa, %._crit_edge96 ], [ %i.bg, %.loopexit74.split.us ], [ %.062.lcssa, %.split.preheader ], [ %.lcssa154.lcssa, %.loopexit.split.us ], [ 0, %.preheader73.lr.ph.split ], [ %i.gb, %._crit_edge122.split.us.us.1 ], [ %.062.lcssa, %.preheader.lr.ph.split.us140 ], [ %.us-phi127.us, %.preheader.us135.preheader.1 ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @computeBiPredSSE2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, 1                      ; 7 uses
  %i.c = load i32, ptr @wp_luma_round, align 4, !tbaa !4
  %i.d = shl nsw i32 %i.c, 1                      ; 7 uses
  %i.e = load i32, ptr @img_padded_size_x, align 4, !tbaa !4 ; 2 uses
  store ptr %0, ptr @src_line, align 8, !tbaa !33
  %i.f = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = load ptr, ptr @ref_pic2_sub, align 8, !tbaa !35
  %i.k = tail call ptr %i.i(ptr noundef %i.j, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.k, ptr @ref2_line, align 8, !tbaa !33
  %i.l = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr @get_line, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = load ptr, ptr @ref_pic1_sub, align 8, !tbaa !35
  %i.q = tail call ptr %i.o(ptr noundef %i.p, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.q, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted118 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  %src_line.promoted124 = load ptr, ptr @src_line, align 8
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.preheader109.lr.ph, label %._crit_edge132

.preheader109.lr.ph:                              ; preds = %bb.a
  %i.s = sub nsw i32 %i.e, %2
  %i.t = icmp sgt i32 %2, 0
  %i.u = load i16, ptr @weight1, align 2
  %i.v = sext i16 %i.u to i32
  %i.w = load i16, ptr @weight2, align 2
  %i.x = sext i16 %i.w to i32
  %i.y = load i16, ptr @offsetBi, align 2
  %i.z = sext i16 %i.y to i32
  %i.aa = sext i32 %i.s to i64                    ; 2 uses
  br i1 %i.t, label %.preheader109.lr.ph.split.us, label %.preheader109.lr.ph.split

.preheader109.lr.ph.split.us:                     ; preds = %.preheader109.lr.ph
  %i.ab = load ptr, ptr @img, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 15520
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !45
  %broadcast.splatinsert.a = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat290.a = shufflevector <4 x i32> %broadcast.splatinsert.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert291.a = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.ae = shufflevector <4 x i32> %broadcast.splatinsert291.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %bb.b, %.preheader109.lr.ph.split.us
  %.199115.us.ph = phi i32 [ 0, %.preheader109.lr.ph.split.us ], [ %op.rdx, %bb.b ]
  %.0103114.us.ph = phi i32 [ 0, %.preheader109.lr.ph.split.us ], [ %i.ap, %bb.b ]
  %.ph418 = phi ptr [ %ref2_line.promoted118, %.preheader109.lr.ph.split.us ], [ %i.an, %bb.b ]
  %.ph419 = phi ptr [ %i.q, %.preheader109.lr.ph.split.us ], [ %i.ao, %bb.b ]
  %.ph420 = phi ptr [ %src_line.promoted124, %.preheader109.lr.ph.split.us ], [ %i.av, %bb.b ]
  br label %scalar.ph.a

bb.b:                                             ; preds = %._crit_edge.us
  %i.an = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.aa ; 2 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aa ; 2 uses
  %i.ap = add nuw nsw i32 %.0103114.us.ph, 1      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %1
  br i1 %exitcond.not, label %._crit_edge132.split.us, label %scalar.ph.preheader.a, !llvm.loop !89

scalar.ph.a:                                      ; preds = %scalar.ph.preheader.a, %scalar.ph.a
  %.199115.us = phi i32 [ %.199115.us.ph, %scalar.ph.preheader.a ], [ %op.rdx, %scalar.ph.a ]
  %.0103114.us = phi i32 [ 0, %scalar.ph.preheader.a ], [ %i.bn, %scalar.ph.a ]
  %i.aq = phi ptr [ %.ph419, %scalar.ph.preheader.a ], [ %i.at, %scalar.ph.a ] ; 2 uses
  %i.ar = phi ptr [ %.ph418, %scalar.ph.preheader.a ], [ %i.au, %scalar.ph.a ] ; 2 uses
  %i.as = phi ptr [ %.ph420, %scalar.ph.preheader.a ], [ %i.av, %scalar.ph.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.aw = load <4 x i16>, ptr %i.aq, align 2, !tbaa !40
  %i.ax = zext <4 x i16> %i.aw to <4 x i32>
  %i.ay = mul nsw <4 x i32> %broadcast.splat290.a, %i.ax
  %i.az = load <4 x i16>, ptr %i.ar, align 2, !tbaa !40
  %i.ba = zext <4 x i16> %i.az to <4 x i32>
  %i.bb = mul nsw <4 x i32> %i.ag, %i.ba
  %i.bc = add <4 x i32> %i.ay, %i.ae
  %i.bd = add <4 x i32> %i.bc, %i.bb
  %i.be = ashr <4 x i32> %i.bd, %i.ai
  %i.bf = add nsw <4 x i32> %i.be, %i.ak
  %i.bg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bf, <4 x i32> zeroinitializer)
  %i.bh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bg, <4 x i32> %i.am)
  %i.bi = load <4 x i16>, ptr %i.as, align 2, !tbaa !40
  %i.bj = zext <4 x i16> %i.bi to <4 x i32>
  %i.bk = sub nsw <4 x i32> %i.bj, %i.bh          ; 2 uses
  %i.bl = mul nsw <4 x i32> %i.bk, %i.bk
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bl)
  %op.rdx = add i32 %i.bm, %.199115.us            ; 5 uses
  %i.bn = add nuw nsw i32 %.0103114.us, 4         ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %2
  br i1 %i.bo, label %scalar.ph.a, label %._crit_edge.us, !llvm.loop !90

._crit_edge.us:                                   ; preds = %scalar.ph.a
  %.not107.us = icmp slt i32 %op.rdx, %3
  br i1 %.not107.us, label %bb.b, label %.loopexit110.split.us

.loopexit110.split.us:                            ; preds = %._crit_edge.us
  store ptr %i.au, ptr @ref2_line, align 8, !tbaa !33
  store ptr %i.at, ptr @ref1_line, align 8, !tbaa !33
  store ptr %i.av, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

._crit_edge132.split.us:                          ; preds = %bb.b
  store ptr %i.an, ptr @ref2_line, align 8, !tbaa !33
  store ptr %i.ao, ptr @ref1_line, align 8, !tbaa !33
  store ptr %i.av, ptr @src_line, align 8, !tbaa !33
  br label %._crit_edge132

.preheader109.lr.ph.split:                        ; preds = %.preheader109.lr.ph
  %.not107 = icmp sgt i32 %3, 0
  br i1 %.not107, label %.preheader109.preheader, label %.loopexit

.preheader109.preheader:                          ; preds = %.preheader109.lr.ph.split
  %i.bp = sext i32 %i.e to i64
  %i.bq = shl nsw i64 %i.bp, 1                    ; 2 uses
  %i.br = sext i32 %2 to i64
  %i.bs = shl nsw i64 %i.br, 1                    ; 2 uses
  %i.bt = sub nsw i64 %i.bq, %i.bs
  %i.bu = add nsw i32 %1, -1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = mul i64 %i.bt, %i.bv
  %i.bx = add i64 %i.bw, %i.bq
  %i.by = sub i64 %i.bx, %i.bs                    ; 2 uses
  %scevgep = getelementptr i8, ptr %ref2_line.promoted118, i64 %i.by
  %scevgep212 = getelementptr i8, ptr %i.q, i64 %i.by
  store ptr %scevgep, ptr @ref2_line, align 8, !tbaa !33
  store ptr %scevgep212, ptr @ref1_line, align 8, !tbaa !33
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %.preheader109.preheader, %._crit_edge132.split.us, %bb.a
  %.098.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.preheader109.preheader ], [ %op.rdx, %._crit_edge132.split.us ] ; 6 uses
  %i.bz = load i32, ptr @ChromaMEEnable, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge132
  %i.ca = load i32, ptr @shift_cr_x, align 4, !tbaa !4
  %i.cb = ashr i32 %2, %i.ca                      ; 10 uses
  %i.cc = load i32, ptr @shift_cr_y, align 4, !tbaa !4
  %i.cd = ashr i32 %1, %i.cc
  %.fr185 = freeze i32 %i.cd                      ; 4 uses
  %i.ce = load i32, ptr @img_cr_padded_size_x, align 4, !tbaa !4 ; 2 uses
  %i.cf = sub nsw i32 %i.ce, %i.cb
  %i.cg = icmp sgt i32 %.fr185, 0
  %i.ch = icmp sgt i32 %i.cb, 0                   ; 2 uses
  %i.ci = sext i32 %i.cf to i64                   ; 4 uses
  br i1 %i.cg, label %.preheader.lr.ph.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.cj, ptr @src_line, align 8, !tbaa !33
  %i.ck = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !42
  %i.cp = tail call ptr %i.cn(ptr noundef %i.co, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.cp, ptr @ref2_line, align 8, !tbaa !33
  %i.cq = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !42
  %i.cv = tail call ptr %i.ct(ptr noundef %i.cu, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.cv, ptr @ref1_line, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.cw, ptr @src_line, align 8, !tbaa !33
  %i.cx = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !42
  %i.dc = tail call ptr %i.da(ptr noundef %i.db, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.dc, ptr @ref2_line, align 8, !tbaa !33
  %i.dd = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !42
  %i.di = tail call ptr %i.dg(ptr noundef %i.dh, i32 noundef %5, i32 noundef %4) #8
  store ptr %i.di, ptr @ref1_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.us.preheader:                    ; preds = %bb.c
  %i.dj = sext i32 %i.ce to i64
  %i.dk = shl nsw i64 %i.dj, 1                    ; 2 uses
  %i.dl = sext i32 %i.cb to i64
  %i.dm = shl nsw i64 %i.dl, 1                    ; 2 uses
  %i.dn = sub nsw i64 %i.dk, %i.dm
  %i.do = add nsw i32 %.fr185, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = mul i64 %i.dn, %i.dp
  %i.dr = add i64 %i.dq, %i.dk
  %i.ds = sub i64 %i.dr, %i.dm                    ; 4 uses
  %i.dt = add i32 %i.cb, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 4                ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.dx, ptr @src_line, align 8, !tbaa !33
  %i.dy = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !8
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 8), align 8, !tbaa !42
  %i.ed = tail call ptr %i.eb(ptr noundef %i.ec, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.ed, ptr @ref2_line, align 8, !tbaa !33
  %i.ee = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !8
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 8), align 8, !tbaa !42
  %i.ej = tail call ptr %i.eh(ptr noundef %i.ei, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.ej, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted144.us = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.ch, label %.preheader.lr.ph.split.us.us, label %.preheader.lr.ph.split.us176

.preheader.lr.ph.split.us176:                     ; preds = %.preheader.lr.ph.us.preheader
  %.not106.us177 = icmp slt i32 %.098.lcssa, %3
  br i1 %.not106.us177, label %.preheader.us171.preheader, label %.loopexit

.preheader.us171.preheader:                       ; preds = %.preheader.lr.ph.split.us176
  %scevgep214 = getelementptr i8, ptr %ref2_line.promoted144.us, i64 %i.ds
  %scevgep215 = getelementptr i8, ptr %i.ej, i64 %i.ds
  br label %._crit_edge158.us

._crit_edge158.us:                                ; preds = %bb.e, %.preheader.us171.preheader
  %.lcssa254.sink = phi ptr [ %scevgep214, %.preheader.us171.preheader ], [ %i.la, %bb.e ]
  %.lcssa253.sink = phi ptr [ %scevgep215, %.preheader.us171.preheader ], [ %i.lb, %bb.e ]
  %.us-phi163.us = phi i32 [ %.098.lcssa, %.preheader.us171.preheader ], [ %.lcssa272, %bb.e ] ; 2 uses
  store ptr %.lcssa254.sink, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa253.sink, ptr @ref1_line, align 8, !tbaa !33
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.ek, ptr @src_line, align 8, !tbaa !33
  %i.el = load i32, ptr @bipred2_access_method, align 4, !tbaa !4
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic2_sub, i64 16), align 8, !tbaa !42
  %i.eq = tail call ptr %i.eo(ptr noundef %i.ep, i32 noundef %7, i32 noundef %6) #8
  store ptr %i.eq, ptr @ref2_line, align 8, !tbaa !33
  %i.er = load i32, ptr @bipred1_access_method, align 4, !tbaa !4
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr @get_crline, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_pic1_sub, i64 16), align 8, !tbaa !42
  %i.ew = tail call ptr %i.eu(ptr noundef %i.ev, i32 noundef %5, i32 noundef %4) #8 ; 3 uses
  store ptr %i.ew, ptr @ref1_line, align 8, !tbaa !33
  %ref2_line.promoted144.us.1 = load ptr, ptr @ref2_line, align 8 ; 2 uses
  br i1 %i.ch, label %.preheader.lr.ph.split.us.us.1, label %.preheader.us171.preheader.1

.preheader.us171.preheader.1:                     ; preds = %._crit_edge158.us
  %scevgep214.1 = getelementptr i8, ptr %ref2_line.promoted144.us.1, i64 %i.ds
  %scevgep215.1 = getelementptr i8, ptr %i.ew, i64 %i.ds
  store ptr %scevgep214.1, ptr @ref2_line, align 8, !tbaa !33
  store ptr %scevgep215.1, ptr @ref1_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.split.us.us.1:                   ; preds = %._crit_edge158.us
  %i.ex = load ptr, ptr @img, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 15524
  %src_line.promoted150.us.1 = load ptr, ptr @src_line, align 8
  %i.ez = load i16, ptr getelementptr inbounds nuw (i8, ptr @weight1_cr, i64 2), align 2, !tbaa !40
  %i.fa = sext i16 %i.ez to i32                   ; 3 uses
  %i.fb = load i16, ptr getelementptr inbounds nuw (i8, ptr @weight2_cr, i64 2), align 2, !tbaa !40
  %i.fc = sext i16 %i.fb to i32                   ; 3 uses
  %i.fd = load i32, ptr %i.ey, align 4, !tbaa !48 ; 3 uses
  %i.fe = load i16, ptr getelementptr inbounds nuw (i8, ptr @offsetBi_cr, i64 2), align 2, !tbaa !40
  %i.ff = sext i16 %i.fe to i32                   ; 3 uses
  %i.fg = zext nneg i32 %i.cb to i64              ; 2 uses
  %min.iters.check352 = icmp ult i32 %i.cb, 4
  %n.vec355 = and i64 %i.fg, 2147483644           ; 4 uses
  %i.fh = trunc nuw nsw i64 %n.vec355 to i32
  %i.fi = shl nuw nsw i64 %n.vec355, 2            ; 3 uses
  %broadcast.splatinsert356 = insertelement <4 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat357 = shufflevector <4 x i32> %broadcast.splatinsert356, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert358 = insertelement <4 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat359 = shufflevector <4 x i32> %broadcast.splatinsert358, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert360 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat361 = shufflevector <4 x i32> %broadcast.splatinsert360, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert364 = insertelement <4 x i32> poison, i32 %i.ff, i64 0
  %broadcast.splat365 = shufflevector <4 x i32> %broadcast.splatinsert364, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat367 = shufflevector <4 x i32> %broadcast.splatinsert366, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n385 = icmp eq i64 %n.vec355, %i.fg
  br label %.preheader.us.us.1

.preheader.us.us.1:                               ; preds = %bb.d, %.preheader.lr.ph.split.us.us.1
  %.3157.us.us.1 = phi i32 [ %.us-phi163.us, %.preheader.lr.ph.split.us.us.1 ], [ %.lcssa, %bb.d ] ; 2 uses
  %.1102156.us.us.1 = phi i32 [ 0, %.preheader.lr.ph.split.us.us.1 ], [ %i.iv, %bb.d ]
  %.lcssa142145155.us.us.1 = phi ptr [ %ref2_line.promoted144.us.1, %.preheader.lr.ph.split.us.us.1 ], [ %i.it, %bb.d ] ; 4 uses
  %.lcssa141148154.us.us.1 = phi ptr [ %i.ew, %.preheader.lr.ph.split.us.us.1 ], [ %i.iu, %bb.d ] ; 4 uses
  %.lcssa143152153.us.us.1 = phi ptr [ %src_line.promoted150.us.1, %.preheader.lr.ph.split.us.us.1 ], [ %scevgep218.1, %bb.d ] ; 4 uses
  br i1 %min.iters.check352, label %scalar.ph351.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %.preheader.us.us.1
  %i.fj = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.fi
  %i.fk = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.fi
  %i.fl = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.fi
  %i.fm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us.1, i64 0
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph353
  %index369 = phi i64 [ 0, %vector.ph353 ], [ %index.next383, %vector.body368 ] ; 2 uses
  %vec.phi370 = phi <4 x i32> [ %i.fm, %vector.ph353 ], [ %i.gy, %vector.body368 ]
  %i.fn = shl i64 %index369, 2                    ; 3 uses
  %next.gep371 = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.fn
  %next.gep372 = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.fn
  %next.gep373 = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.fn
  %wide.vec374 = load <8 x i16>, ptr %next.gep371, align 2, !tbaa !40
  %i.fo = freeze <8 x i16> %wide.vec374           ; 2 uses
  %i.fp = bitcast <8 x i16> %i.fo to <4 x i32>
  %i.fq = bitcast <8 x i16> %i.fo to <4 x i32>
  %i.fr = and <4 x i32> %i.fq, splat (i32 65535)
  %i.fs = lshr <4 x i32> %i.fp, splat (i32 16)
  %i.ft = mul nsw <4 x i32> %i.fr, %broadcast.splat357
  %wide.vec377 = load <8 x i16>, ptr %next.gep372, align 2, !tbaa !40
  %i.fu = freeze <8 x i16> %wide.vec377           ; 2 uses
  %i.fv = bitcast <8 x i16> %i.fu to <4 x i32>
  %i.fw = bitcast <8 x i16> %i.fu to <4 x i32>
  %i.fx = and <4 x i32> %i.fw, splat (i32 65535)
  %i.fy = lshr <4 x i32> %i.fv, splat (i32 16)
  %i.fz = mul nsw <4 x i32> %i.fx, %broadcast.splat359
  %i.ga = add <4 x i32> %i.ft, %broadcast.splat361
  %i.gb = add <4 x i32> %i.ga, %i.fz
  %i.gc = ashr <4 x i32> %i.gb, %broadcast.splat363
  %i.gd = add nsw <4 x i32> %i.gc, %broadcast.splat365
  %i.ge = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gd, <4 x i32> zeroinitializer)
  %i.gf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ge, <4 x i32> %broadcast.splat367)
  %wide.vec380 = load <8 x i16>, ptr %next.gep373, align 2, !tbaa !40
  %i.gg = freeze <8 x i16> %wide.vec380           ; 2 uses
  %i.gh = bitcast <8 x i16> %i.gg to <4 x i32>
  %i.gi = bitcast <8 x i16> %i.gg to <4 x i32>
  %i.gj = and <4 x i32> %i.gi, splat (i32 65535)
  %i.gk = lshr <4 x i32> %i.gh, splat (i32 16)
  %i.gl = sub nsw <4 x i32> %i.gj, %i.gf          ; 2 uses
  %i.gm = mul nsw <4 x i32> %i.gl, %i.gl
  %i.gn = add <4 x i32> %i.gm, %vec.phi370
  %i.go = mul nsw <4 x i32> %i.fs, %broadcast.splat357
  %i.gp = mul nsw <4 x i32> %i.fy, %broadcast.splat359
  %i.gq = add <4 x i32> %i.go, %broadcast.splat361
  %i.gr = add <4 x i32> %i.gq, %i.gp
  %i.gs = ashr <4 x i32> %i.gr, %broadcast.splat363
  %i.gt = add nsw <4 x i32> %i.gs, %broadcast.splat365
  %i.gu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gt, <4 x i32> zeroinitializer)
  %i.gv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gu, <4 x i32> %broadcast.splat367)
  %i.gw = sub nsw <4 x i32> %i.gk, %i.gv          ; 2 uses
  %i.gx = mul nsw <4 x i32> %i.gw, %i.gw
  %i.gy = add <4 x i32> %i.gn, %i.gx              ; 2 uses
  %index.next383 = add nuw i64 %index369, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next383, %n.vec355
  br i1 %i.gz, label %middle.block384, label %vector.body368, !llvm.loop !91

middle.block384:                                  ; preds = %vector.body368
  %i.ha = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gy) ; 2 uses
  br i1 %cmp.n385, label %._crit_edge.us160.us.1, label %scalar.ph351.preheader

scalar.ph351.preheader:                           ; preds = %.preheader.us.us.1, %middle.block384
  %.4140.us.us.1.ph = phi i32 [ %.3157.us.us.1, %.preheader.us.us.1 ], [ %i.ha, %middle.block384 ]
  %.1104139.us.us.1.ph = phi i32 [ 0, %.preheader.us.us.1 ], [ %i.fh, %middle.block384 ]
  %.ph = phi ptr [ %.lcssa141148154.us.us.1, %.preheader.us.us.1 ], [ %i.fj, %middle.block384 ]
  %.ph396 = phi ptr [ %.lcssa142145155.us.us.1, %.preheader.us.us.1 ], [ %i.fk, %middle.block384 ]
  %.ph397 = phi ptr [ %.lcssa143152153.us.us.1, %.preheader.us.us.1 ], [ %i.fl, %middle.block384 ]
  br label %scalar.ph351

scalar.ph351:                                     ; preds = %scalar.ph351.preheader, %scalar.ph351
  %.4140.us.us.1 = phi i32 [ %i.ir, %scalar.ph351 ], [ %.4140.us.us.1.ph, %scalar.ph351.preheader ]
  %.1104139.us.us.1 = phi i32 [ %i.is, %scalar.ph351 ], [ %.1104139.us.us.1.ph, %scalar.ph351.preheader ]
  %i.hb = phi ptr [ %i.hy, %scalar.ph351 ], [ %.ph, %scalar.ph351.preheader ] ; 3 uses
  %i.hc = phi ptr [ %i.ic, %scalar.ph351 ], [ %.ph396, %scalar.ph351.preheader ] ; 3 uses
  %i.hd = phi ptr [ %i.im, %scalar.ph351 ], [ %.ph397, %scalar.ph351.preheader ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hf = load i16, ptr %i.hb, align 2, !tbaa !40
  %i.hg = zext i16 %i.hf to i32
  %i.hh = mul nsw i32 %i.hg, %i.fa
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.hj = load i16, ptr %i.hc, align 2, !tbaa !40
  %i.hk = zext i16 %i.hj to i32
  %i.hl = mul nsw i32 %i.hk, %i.fc
  %i.hm = add i32 %i.hh, %i.d
  %i.hn = add i32 %i.hm, %i.hl
  %i.ho = ashr i32 %i.hn, %i.b
  %i.hp = add nsw i32 %i.ho, %i.ff
  %i.hq = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.hp, i32 0)
  %i.hr = tail call noundef i32 @llvm.smin.i32(i32 %i.hq, i32 %i.fd)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.ht = load i16, ptr %i.hd, align 2, !tbaa !40
  %i.hu = zext i16 %i.ht to i32
  %i.hv = sub nsw i32 %i.hu, %i.hr                ; 2 uses
  %i.hw = mul nsw i32 %i.hv, %i.hv
  %i.hx = add nsw i32 %i.hw, %.4140.us.us.1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hz = load i16, ptr %i.he, align 2, !tbaa !40
  %i.ia = zext i16 %i.hz to i32
  %i.ib = mul nsw i32 %i.ia, %i.fa
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.id = load i16, ptr %i.hi, align 2, !tbaa !40
  %i.ie = zext i16 %i.id to i32
  %i.if = mul nsw i32 %i.ie, %i.fc
  %i.ig = add i32 %i.ib, %i.d
  %i.ih = add i32 %i.ig, %i.if
  %i.ii = ashr i32 %i.ih, %i.b
  %i.ij = add nsw i32 %i.ii, %i.ff
  %i.ik = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ij, i32 0)
  %i.il = tail call noundef i32 @llvm.smin.i32(i32 %i.ik, i32 %i.fd)
  %i.im = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.in = load i16, ptr %i.hs, align 2, !tbaa !40
  %i.io = zext i16 %i.in to i32
  %i.ip = sub nsw i32 %i.io, %i.il                ; 2 uses
  %i.iq = mul nsw i32 %i.ip, %i.ip
  %i.ir = add nsw i32 %i.hx, %i.iq                ; 2 uses
  %i.is = add nuw nsw i32 %.1104139.us.us.1, 1    ; 2 uses
  %exitcond219.1.not = icmp eq i32 %i.is, %i.cb
  br i1 %exitcond219.1.not, label %._crit_edge.us160.us.1, label %scalar.ph351, !llvm.loop !94

._crit_edge.us160.us.1:                           ; preds = %scalar.ph351, %middle.block384
  %.lcssa = phi i32 [ %i.ha, %middle.block384 ], [ %i.ir, %scalar.ph351 ] ; 4 uses
  %scevgep216.1 = getelementptr i8, ptr %.lcssa141148154.us.us.1, i64 %i.dw ; 2 uses
  %scevgep217.1 = getelementptr i8, ptr %.lcssa142145155.us.us.1, i64 %i.dw ; 2 uses
  %scevgep218.1 = getelementptr i8, ptr %.lcssa143152153.us.us.1, i64 %i.dw ; 3 uses
  %.not106.us.us.1 = icmp slt i32 %.lcssa, %3
  br i1 %.not106.us.us.1, label %bb.d, label %.loopexit.split.us

bb.d:                                             ; preds = %._crit_edge.us160.us.1
  %i.it = getelementptr inbounds [2 x i8], ptr %scevgep217.1, i64 %i.ci ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %scevgep216.1, i64 %i.ci ; 2 uses
  %i.iv = add nuw nsw i32 %.1102156.us.us.1, 1    ; 2 uses
  %exitcond220.1.not = icmp eq i32 %i.iv, %.fr185
  br i1 %exitcond220.1.not, label %._crit_edge158.split.us.us.1, label %.preheader.us.us.1, !llvm.loop !95

._crit_edge158.split.us.us.1:                     ; preds = %bb.d
  store ptr %i.it, ptr @ref2_line, align 8, !tbaa !33
  store ptr %i.iu, ptr @ref1_line, align 8, !tbaa !33
  store ptr %scevgep218.1, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.preheader.lr.ph.split.us.us:                     ; preds = %.preheader.lr.ph.us.preheader
  %i.iw = load ptr, ptr @img, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 15524
  %src_line.promoted150.us = load ptr, ptr @src_line, align 8
  %i.iy = load i16, ptr @weight1_cr, align 2, !tbaa !40
  %i.iz = sext i16 %i.iy to i32                   ; 3 uses
  %i.ja = load i16, ptr @weight2_cr, align 2, !tbaa !40
  %i.jb = sext i16 %i.ja to i32                   ; 3 uses
  %i.jc = load i32, ptr %i.ix, align 4, !tbaa !48 ; 3 uses
  %i.jd = load i16, ptr @offsetBi_cr, align 2, !tbaa !40
  %i.je = sext i16 %i.jd to i32                   ; 3 uses
  %i.jf = zext nneg i32 %i.cb to i64              ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.cb, 4
  %n.vec317 = and i64 %i.jf, 2147483644           ; 4 uses
  %i.jg = trunc nuw nsw i64 %n.vec317 to i32
  %i.jh = shl nuw nsw i64 %n.vec317, 2            ; 3 uses
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert322 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat323 = shufflevector <4 x i32> %broadcast.splatinsert322, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert324 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat325 = shufflevector <4 x i32> %broadcast.splatinsert324, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert326 = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %broadcast.splat327 = shufflevector <4 x i32> %broadcast.splatinsert326, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert328 = insertelement <4 x i32> poison, i32 %i.jc, i64 0
  %broadcast.splat329 = shufflevector <4 x i32> %broadcast.splatinsert328, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec317, %i.jf
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.e, %.preheader.lr.ph.split.us.us
  %.3157.us.us = phi i32 [ %.098.lcssa, %.preheader.lr.ph.split.us.us ], [ %.lcssa272, %bb.e ] ; 2 uses
  %.1102156.us.us = phi i32 [ 0, %.preheader.lr.ph.split.us.us ], [ %i.lc, %bb.e ]
  %.lcssa142145155.us.us = phi ptr [ %ref2_line.promoted144.us, %.preheader.lr.ph.split.us.us ], [ %i.la, %bb.e ] ; 4 uses
  %.lcssa141148154.us.us = phi ptr [ %i.ej, %.preheader.lr.ph.split.us.us ], [ %i.lb, %bb.e ] ; 4 uses
  %.lcssa143152153.us.us = phi ptr [ %src_line.promoted150.us, %.preheader.lr.ph.split.us.us ], [ %scevgep218, %bb.e ] ; 4 uses
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %.preheader.us.us
  %i.ji = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.jh
  %i.jj = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.jh
  %i.jk = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.jh
  %i.jl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.3157.us.us, i64 0
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph315
  %index331 = phi i64 [ 0, %vector.ph315 ], [ %index.next343, %vector.body330 ] ; 2 uses
  %vec.phi332 = phi <4 x i32> [ %i.jl, %vector.ph315 ], [ %i.kx, %vector.body330 ]
  %i.jm = shl i64 %index331, 2                    ; 3 uses
  %next.gep333 = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.jm
  %next.gep334 = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.jm
  %next.gep335 = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.jm
  %wide.vec = load <8 x i16>, ptr %next.gep333, align 2, !tbaa !40
  %i.jn = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.jo = bitcast <8 x i16> %i.jn to <4 x i32>
  %i.jp = bitcast <8 x i16> %i.jn to <4 x i32>
  %i.jq = and <4 x i32> %i.jp, splat (i32 65535)
  %i.jr = lshr <4 x i32> %i.jo, splat (i32 16)
  %i.js = mul nsw <4 x i32> %i.jq, %broadcast.splat319
  %wide.vec337 = load <8 x i16>, ptr %next.gep334, align 2, !tbaa !40
  %i.jt = freeze <8 x i16> %wide.vec337           ; 2 uses
  %i.ju = bitcast <8 x i16> %i.jt to <4 x i32>
  %i.jv = bitcast <8 x i16> %i.jt to <4 x i32>
  %i.jw = and <4 x i32> %i.jv, splat (i32 65535)
  %i.jx = lshr <4 x i32> %i.ju, splat (i32 16)
  %i.jy = mul nsw <4 x i32> %i.jw, %broadcast.splat321
  %i.jz = add <4 x i32> %i.js, %broadcast.splat323
  %i.ka = add <4 x i32> %i.jz, %i.jy
  %i.kb = ashr <4 x i32> %i.ka, %broadcast.splat325
  %i.kc = add nsw <4 x i32> %i.kb, %broadcast.splat327
  %i.kd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kc, <4 x i32> zeroinitializer)
  %i.ke = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kd, <4 x i32> %broadcast.splat329)
  %wide.vec340 = load <8 x i16>, ptr %next.gep335, align 2, !tbaa !40
  %i.kf = freeze <8 x i16> %wide.vec340           ; 2 uses
  %i.kg = bitcast <8 x i16> %i.kf to <4 x i32>
  %i.kh = bitcast <8 x i16> %i.kf to <4 x i32>
  %i.ki = and <4 x i32> %i.kh, splat (i32 65535)
  %i.kj = lshr <4 x i32> %i.kg, splat (i32 16)
  %i.kk = sub nsw <4 x i32> %i.ki, %i.ke          ; 2 uses
  %i.kl = mul nsw <4 x i32> %i.kk, %i.kk
  %i.km = add <4 x i32> %i.kl, %vec.phi332
  %i.kn = mul nsw <4 x i32> %i.jr, %broadcast.splat319
  %i.ko = mul nsw <4 x i32> %i.jx, %broadcast.splat321
  %i.kp = add <4 x i32> %i.kn, %broadcast.splat323
  %i.kq = add <4 x i32> %i.kp, %i.ko
  %i.kr = ashr <4 x i32> %i.kq, %broadcast.splat325
  %i.ks = add nsw <4 x i32> %i.kr, %broadcast.splat327
  %i.kt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ks, <4 x i32> zeroinitializer)
  %i.ku = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.kt, <4 x i32> %broadcast.splat329)
  %i.kv = sub nsw <4 x i32> %i.kj, %i.ku          ; 2 uses
  %i.kw = mul nsw <4 x i32> %i.kv, %i.kv
  %i.kx = add <4 x i32> %i.km, %i.kw              ; 2 uses
  %index.next343 = add nuw i64 %index331, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next343, %n.vec317
  br i1 %i.ky, label %middle.block344, label %vector.body330, !llvm.loop !96

middle.block344:                                  ; preds = %vector.body330
  %i.kz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.kx) ; 2 uses
  br i1 %cmp.n345, label %._crit_edge.us160.us, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %.preheader.us.us, %middle.block344
  %.4140.us.us.ph = phi i32 [ %.3157.us.us, %.preheader.us.us ], [ %i.kz, %middle.block344 ]
  %.1104139.us.us.ph = phi i32 [ 0, %.preheader.us.us ], [ %i.jg, %middle.block344 ]
  %.ph406 = phi ptr [ %.lcssa141148154.us.us, %.preheader.us.us ], [ %i.ji, %middle.block344 ]
  %.ph407 = phi ptr [ %.lcssa142145155.us.us, %.preheader.us.us ], [ %i.jj, %middle.block344 ]
  %.ph408 = phi ptr [ %.lcssa143152153.us.us, %.preheader.us.us ], [ %i.jk, %middle.block344 ]
  br label %scalar.ph313

bb.e:                                             ; preds = %._crit_edge.us160.us
  %i.la = getelementptr inbounds [2 x i8], ptr %scevgep217, i64 %i.ci ; 2 uses
  %i.lb = getelementptr inbounds [2 x i8], ptr %scevgep216, i64 %i.ci ; 2 uses
  %i.lc = add nuw nsw i32 %.1102156.us.us, 1      ; 2 uses
  %exitcond220.not = icmp eq i32 %i.lc, %.fr185
  br i1 %exitcond220.not, label %._crit_edge158.us, label %.preheader.us.us, !llvm.loop !95

scalar.ph313:                                     ; preds = %scalar.ph313.preheader, %scalar.ph313
  %.4140.us.us = phi i32 [ %i.mt, %scalar.ph313 ], [ %.4140.us.us.ph, %scalar.ph313.preheader ]
  %.1104139.us.us = phi i32 [ %i.mu, %scalar.ph313 ], [ %.1104139.us.us.ph, %scalar.ph313.preheader ]
  %i.ld = phi ptr [ %i.ma, %scalar.ph313 ], [ %.ph406, %scalar.ph313.preheader ] ; 3 uses
  %i.le = phi ptr [ %i.me, %scalar.ph313 ], [ %.ph407, %scalar.ph313.preheader ] ; 3 uses
  %i.lf = phi ptr [ %i.mo, %scalar.ph313 ], [ %.ph408, %scalar.ph313.preheader ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lh = load i16, ptr %i.ld, align 2, !tbaa !40
  %i.li = zext i16 %i.lh to i32
  %i.lj = mul nsw i32 %i.li, %i.iz
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.ll = load i16, ptr %i.le, align 2, !tbaa !40
  %i.lm = zext i16 %i.ll to i32
  %i.ln = mul nsw i32 %i.lm, %i.jb
  %i.lo = add i32 %i.lj, %i.d
  %i.lp = add i32 %i.lo, %i.ln
  %i.lq = ashr i32 %i.lp, %i.b
  %i.lr = add nsw i32 %i.lq, %i.je
  %i.ls = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.lr, i32 0)
  %i.lt = tail call noundef i32 @llvm.smin.i32(i32 %i.ls, i32 %i.jc)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lv = load i16, ptr %i.lf, align 2, !tbaa !40
  %i.lw = zext i16 %i.lv to i32
  %i.lx = sub nsw i32 %i.lw, %i.lt                ; 2 uses
  %i.ly = mul nsw i32 %i.lx, %i.lx
  %i.lz = add nsw i32 %i.ly, %.4140.us.us
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.mb = load i16, ptr %i.lg, align 2, !tbaa !40
  %i.mc = zext i16 %i.mb to i32
  %i.md = mul nsw i32 %i.mc, %i.iz
  %i.me = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.mf = load i16, ptr %i.lk, align 2, !tbaa !40
  %i.mg = zext i16 %i.mf to i32
  %i.mh = mul nsw i32 %i.mg, %i.jb
  %i.mi = add i32 %i.md, %i.d
  %i.mj = add i32 %i.mi, %i.mh
  %i.mk = ashr i32 %i.mj, %i.b
  %i.ml = add nsw i32 %i.mk, %i.je
  %i.mm = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ml, i32 0)
  %i.mn = tail call noundef i32 @llvm.smin.i32(i32 %i.mm, i32 %i.jc)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.mp = load i16, ptr %i.lu, align 2, !tbaa !40
  %i.mq = zext i16 %i.mp to i32
  %i.mr = sub nsw i32 %i.mq, %i.mn                ; 2 uses
  %i.ms = mul nsw i32 %i.mr, %i.mr
  %i.mt = add nsw i32 %i.lz, %i.ms                ; 2 uses
  %i.mu = add nuw nsw i32 %.1104139.us.us, 1      ; 2 uses
  %exitcond219.not = icmp eq i32 %i.mu, %i.cb
  br i1 %exitcond219.not, label %._crit_edge.us160.us, label %scalar.ph313, !llvm.loop !97

._crit_edge.us160.us:                             ; preds = %scalar.ph313, %middle.block344
  %.lcssa272 = phi i32 [ %i.kz, %middle.block344 ], [ %i.mt, %scalar.ph313 ] ; 4 uses
  %scevgep216 = getelementptr i8, ptr %.lcssa141148154.us.us, i64 %i.dw ; 2 uses
  %scevgep217 = getelementptr i8, ptr %.lcssa142145155.us.us, i64 %i.dw ; 2 uses
  %scevgep218 = getelementptr i8, ptr %.lcssa143152153.us.us, i64 %i.dw ; 2 uses
  %.not106.us.us = icmp slt i32 %.lcssa272, %3
  br i1 %.not106.us.us, label %bb.e, label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %._crit_edge.us160.us, %._crit_edge.us160.us.1
  %.lcssa196.lcssa = phi ptr [ %scevgep216.1, %._crit_edge.us160.us.1 ], [ %scevgep216, %._crit_edge.us160.us ]
  %.lcssa194.lcssa = phi ptr [ %scevgep217.1, %._crit_edge.us160.us.1 ], [ %scevgep217, %._crit_edge.us160.us ]
  %.lcssa192.lcssa = phi ptr [ %scevgep218.1, %._crit_edge.us160.us.1 ], [ %scevgep218, %._crit_edge.us160.us ]
  %.lcssa190.lcssa = phi i32 [ %.lcssa, %._crit_edge.us160.us.1 ], [ %.lcssa272, %._crit_edge.us160.us ]
  store ptr %.lcssa194.lcssa, ptr @ref2_line, align 8, !tbaa !33
  store ptr %.lcssa196.lcssa, ptr @ref1_line, align 8, !tbaa !33
  store ptr %.lcssa192.lcssa, ptr @src_line, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.lr.ph.split.us176, %._crit_edge158.split.us.us.1, %.preheader.us171.preheader.1, %.split.preheader, %.loopexit110.split.us, %.preheader109.lr.ph.split, %.loopexit.split.us, %._crit_edge132
  %.1 = phi i32 [ %.098.lcssa, %._crit_edge132 ], [ %op.rdx, %.loopexit110.split.us ], [ %.098.lcssa, %.split.preheader ], [ %.lcssa190.lcssa, %.loopexit.split.us ], [ 0, %.preheader109.lr.ph.split ], [ %.lcssa, %._crit_edge158.split.us.us.1 ], [ %.098.lcssa, %.preheader.lr.ph.split.us176 ], [ %.us-phi163.us, %.preheader.us171.preheader.1 ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i32> @llvm.abs.v64i32(<64 x i32>, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v64i32(<64 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 5792}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !12, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !13, i64 5040, !13, i64 5048, !14, i64 5056, !13, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !12, i64 5144, !12, i64 5152, !12, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!17, !13, i64 14232}
!17 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !18, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !21, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !23, i64 14160, !21, i64 14168, !21, i64 14176, !21, i64 14184, !23, i64 14192, !23, i64 14200, !9, i64 14208, !9, i64 14216, !25, i64 14224, !13, i64 14232, !13, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !12, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !26, i64 14376, !26, i64 14384, !26, i64 14392, !26, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !29, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !30, i64 15480, !31, i64 15488, !21, i64 15496, !30, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !32, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p2 omnipotent char", !20, i64 0}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p3 int", !22, i64 0}
!22 = !{!"any p3 pointer", !20, i64 0}
!23 = !{!"p4 int", !24, i64 0}
!24 = !{!"any p4 pointer", !22, i64 0}
!25 = !{!"p1 _ZTS10macroblock", !9, i64 0}
!26 = !{!"p6 short", !27, i64 0}
!27 = !{!"any p6 pointer", !28, i64 0}
!28 = !{!"any p5 pointer", !24, i64 0}
!29 = !{!"p1 _ZTS18DecRefPicMarking_s", !9, i64 0}
!30 = !{!"p2 double", !20, i64 0}
!31 = !{!"p3 double", !22, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !9, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"", !37, i64 0, !6, i64 8}
!37 = !{!"p4 short", !24, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!32, !32, i64 0}
!41 = distinct !{!41, !39}
!42 = !{!37, !37, i64 0}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = !{!17, !5, i64 15520}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = !{!17, !5, i64 15524}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = distinct !{!56, !39}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = distinct !{!59, !39}
!60 = distinct !{!60, !39}
!61 = distinct !{!61, !39}
!62 = distinct !{!62, !39}
!63 = distinct !{!63, !39}
!64 = distinct !{!64, !39}
!65 = distinct !{!65, !39}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !39}
!68 = distinct !{!68, !39}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39}
!75 = distinct !{!75, !39}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39, !92, !93}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = distinct !{!94, !39, !93, !92}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39, !92, !93}
!97 = distinct !{!97, !39, !93, !92}
end_hunk_0
