inline.NumInlined: 30
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL25_SCSUToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %.6281 = phi i8 [ %i.v, %bb.av ], [ %.7282, %.split.us ], [ %.7282, %bb.bh ], [ %.2277, %bb.s ] ; 3 uses
  %.4272 = phi i32 [ 0, %bb.av ], [ %i.gt, %.split.us ], [ %i.gt, %bb.bh ], [ %i.bq, %bb.s ] ; 4 uses
  %.10 = phi ptr [ %i.j, %bb.av ], [ %i.hd, %.split.us ], [ %i.hd, %bb.bh ], [ %.6255, %bb.s ] ; 3 uses
  %.5 = phi ptr [ %i.f, %bb.av ], [ %i.gr, %.split.us ], [ %i.gr, %bb.bh ], [ %i.bp, %bb.s ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.h
  %i.fw = icmp ult ptr %.10, %i.l
  %or.cond373499 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond373499, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.loopexit384, %bb.ay
  %i.fx = phi ptr [ %i.gk, %bb.ay ], [ %i.fu, %.loopexit384 ]
  %.6504 = phi ptr [ %i.gj, %bb.ay ], [ %.5, %.loopexit384 ] ; 4 uses
  %.11503 = phi ptr [ %i.gg, %bb.ay ], [ %.10, %.loopexit384 ] ; 3 uses
  %.6265502 = phi i32 [ %i.gi, %bb.ay ], [ %.4272, %.loopexit384 ] ; 4 uses
  %.5273501 = phi i32 [ %.6265502, %bb.ay ], [ %.4272, %.loopexit384 ] ; 2 uses
  %.15500 = phi ptr [ %.16, %bb.ay ], [ %.14, %.loopexit384 ] ; 4 uses
  %i.fy = load i8, ptr %.6504, align 1            ; 2 uses
  %i.fz = add i8 %i.fy, 13
  %i.ga = icmp ult i8 %i.fz, -19
  br i1 %i.ga, label %bb.aw, label %.critedge2

bb.aw:                                            ; preds = %.lr.ph
  %i.gb = zext i8 %i.fy to i16
  %i.gc = shl nuw i16 %i.gb, 8
  %i.gd = load i8, ptr %i.fx, align 1
  %i.ge = zext i8 %i.gd to i16
  %i.gf = or disjoint i16 %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.11503, i64 2 ; 3 uses
  store i16 %i.gf, ptr %.11503, align 2
  %.not364 = icmp eq ptr %.15500, null
  br i1 %.not364, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %.15500, i64 4
  store i32 %.5273501, ptr %.15500, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.16 = phi ptr [ %i.gh, %bb.ax ], [ null, %bb.aw ] ; 2 uses
  %i.gi = add nsw i32 %.6265502, 2                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.6504, i64 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.6504, i64 3 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %i.h
  %i.gm = icmp ult ptr %i.gg, %i.l
  %or.cond373 = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond373, label %.lr.ph, label %.critedge2, !llvm.loop !12

.critedge2:                                       ; preds = %bb.ay, %.lr.ph, %.loopexit384, %bb.av
  %.17 = phi ptr [ %i.n, %bb.av ], [ %.14, %.loopexit384 ], [ %.16, %bb.ay ], [ %.15500, %.lr.ph ] ; 9 uses
  %.7310 = phi i8 [ %i.r, %bb.av ], [ 0, %.loopexit384 ], [ 0, %.lr.ph ], [ 0, %bb.ay ] ; 3 uses
  %.6299 = phi i8 [ %i.x, %bb.av ], [ %.5298, %.loopexit384 ], [ %.5298, %.lr.ph ], [ %.5298, %bb.ay ] ; 3 uses
  %.7291 = phi i8 [ %i.t, %bb.av ], [ %.6290, %.loopexit384 ], [ %.6290, %.lr.ph ], [ %.6290, %bb.ay ] ; 8 uses
  %.7282 = phi i8 [ %i.v, %bb.av ], [ %.6281, %.loopexit384 ], [ %.6281, %.lr.ph ], [ %.6281, %bb.ay ] ; 7 uses
  %.6274 = phi i32 [ -1, %bb.av ], [ %.4272, %.loopexit384 ], [ %.6265502, %bb.ay ], [ %.5273501, %.lr.ph ] ; 2 uses
  %.7266 = phi i32 [ 0, %bb.av ], [ %.4272, %.loopexit384 ], [ %i.gi, %bb.ay ], [ %.6265502, %.lr.ph ]
  %.12 = phi ptr [ %i.j, %bb.av ], [ %.10, %.loopexit384 ], [ %i.gg, %bb.ay ], [ %.11503, %.lr.ph ] ; 9 uses
  %.7 = phi ptr [ %i.f, %bb.av ], [ %.5, %.loopexit384 ], [ %i.gj, %bb.ay ], [ %.6504, %.lr.ph ] ; 4 uses
  %i.gn = icmp ult ptr %.7, %i.h
  br i1 %i.gn, label %.lr.ph519, label %.loopexit

.lr.ph519:                                        ; preds = %.critedge2
  %.not362 = icmp ult ptr %.12, %i.l
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 4 uses
  br i1 %.not362, label %.lr.ph519.split.us, label %.lr.ph519.split

.lr.ph519.split.us:                               ; preds = %.lr.ph519, %bb.bg
  %.8518.us = phi ptr [ %i.gr, %bb.bg ], [ %.7, %.lr.ph519 ] ; 2 uses
  %.8267517.us = phi i32 [ %i.gt, %bb.bg ], [ %.7266, %.lr.ph519 ]
  %.7300516.us = phi i8 [ %.8301.us, %bb.bg ], [ %.6299, %.lr.ph519 ] ; 8 uses
  %.8311515.us = phi i8 [ %.9312.us, %bb.bg ], [ %.7310, %.lr.ph519 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.8518.us, i64 1 ; 8 uses
  %i.gs = load i8, ptr %.8518.us, align 1         ; 12 uses
  %i.gt = add nsw i32 %.8267517.us, 1             ; 5 uses
  switch i8 %.8311515.us, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.az
    i8 2, label %.split.us
  ]

bb.az:                                            ; preds = %.lr.ph519.split.us
  store i8 %i.gs, ptr %i.go, align 2
  br label %.sink.split

bb.ba:                                            ; preds = %.lr.ph519.split.us
  %i.gu = add i8 %i.gs, 32                        ; 2 uses
  %i.gv = icmp ugt i8 %i.gu, 18
  br i1 %i.gv, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gw = icmp samesign ult i8 %i.gs, -24
  br i1 %i.gw, label %.loopexit386.split.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = icmp samesign ult i8 %i.gs, -16
  br i1 %i.gx, label %.split531.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.gs, label %.split537.us [
    i8 -15, label %.critedge.sink.split
    i8 -16, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  store i8 -16, ptr %i.gq, align 1
  br label %.sink.split

bb.bf:                                            ; preds = %bb.ba
  store i8 %i.gs, ptr %i.gq, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.az, %bb.be, %bb.bf
  %.sink839 = phi i8 [ 1, %bb.bf ], [ 1, %bb.be ], [ 2, %bb.az ]
  %.9312.us.ph = phi i8 [ 2, %bb.bf ], [ 1, %bb.be ], [ 2, %bb.az ]
  %.8301.us.ph = phi i8 [ %i.gs, %bb.bf ], [ %.7300516.us, %bb.be ], [ %i.gs, %bb.az ]
  store i8 %.sink839, ptr %i.gp, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %.lr.ph519.split.us
  %.9312.us = phi i8 [ %.8311515.us, %.lr.ph519.split.us ], [ %.9312.us.ph, %.sink.split ] ; 2 uses
  %.8301.us = phi i8 [ %.7300516.us, %.lr.ph519.split.us ], [ %.8301.us.ph, %.sink.split ] ; 2 uses
  %exitcond.not = icmp eq ptr %i.gr, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph519.split.us, !llvm.loop !13

.lr.ph519.split:                                  ; preds = %.lr.ph519
  store i32 15, ptr %1, align 4
  br label %.loopexit

.split531.us:                                     ; preds = %bb.bc
  %i.gy = add nsw i8 %i.gs, 24
  br label %.critedge.sink.split

.split537.us:                                     ; preds = %bb.bd
  store i32 12, ptr %1, align 4
  store i8 %i.gs, ptr %i.gq, align 1
  store i8 1, ptr %i.gp, align 8
  br label %.loopexit

.split.us:                                        ; preds = %.lr.ph519.split.us
  %i.gz = zext i8 %.7300516.us to i16
  %i.ha = shl nuw i16 %i.gz, 8
  %i.hb = zext i8 %i.gs to i16
  %i.hc = or disjoint i16 %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.12, i64 2 ; 2 uses
  store i16 %i.hc, ptr %.12, align 2
  %.not363 = icmp eq ptr %.17, null
  br i1 %.not363, label %.loopexit384, label %bb.bh

bb.bh:                                            ; preds = %.split.us
  %i.he = getelementptr inbounds nuw i8, ptr %.17, i64 4
  store i32 %.6274, ptr %.17, align 4
  br label %.loopexit384

.loopexit:                                        ; preds = %bb.bg, %bb.u, %bb.y, %bb.x, %bb.w, %bb.v, %.loopexit772, %.loopexit773, %.critedge2, %.critedge, %bb.al, %bb.o, %.lr.ph571.split, %.lr.ph519.split, %.split537.us, %bb.at, %bb.am, %.split616.us
  %.19 = phi ptr [ %.2323, %bb.o ], [ %.7328, %.lr.ph571.split ], [ %.17, %.lr.ph519.split ], [ %.17, %.split537.us ], [ %.7328, %.critedge ], [ %.7328, %.split616.us ], [ %.10331, %bb.al ], [ %.7328, %bb.am ], [ %.7328, %bb.at ], [ %.17, %.critedge2 ], [ %.7328, %bb.u ], [ %.7328, %.loopexit773 ], [ %.7328, %.loopexit772 ], [ %.7328, %bb.v ], [ %.7328, %bb.w ], [ %.7328, %bb.x ], [ %.7328, %bb.y ], [ %.17, %bb.bg ]
  %.5320 = phi i8 [ %.0315, %bb.o ], [ %.2317, %.lr.ph571.split ], [ 0, %.lr.ph519.split ], [ 0, %.split537.us ], [ %.2317, %.critedge ], [ %.2317, %.split616.us ], [ %.2317, %bb.al ], [ %.2317, %bb.am ], [ %.2317, %bb.at ], [ 0, %.critedge2 ], [ %.2317, %bb.u ], [ %.2317, %.loopexit773 ], [ %.2317, %.loopexit772 ], [ %.2317, %bb.v ], [ %.2317, %bb.w ], [ %.2317, %bb.x ], [ %.2317, %bb.y ], [ 0, %bb.bg ]
  %.10313 = phi i8 [ 0, %bb.o ], [ %.2305, %.lr.ph571.split ], [ %.7310, %.lr.ph519.split ], [ 0, %.split537.us ], [ %.2305, %.critedge ], [ 0, %.split616.us ], [ 3, %bb.al ], [ 6, %bb.am ], [ 6, %bb.at ], [ %.7310, %.critedge2 ], [ %.2305, %bb.u ], [ 5, %.loopexit773 ], [ 2, %.loopexit772 ], [ 4, %bb.v ], [ 1, %bb.w ], [ 3, %bb.x ], [ 6, %bb.y ], [ %.9312.us, %bb.bg ] ; 2 uses
  %.9302 = phi i8 [ %.0293, %bb.o ], [ %.2295, %.lr.ph571.split ], [ %.6299, %.lr.ph519.split ], [ %.7300516.us, %.split537.us ], [ %.2295, %.critedge ], [ %.2295, %.split616.us ], [ %.2295, %bb.al ], [ %.2295, %bb.am ], [ %.2295, %bb.at ], [ %.6299, %.critedge2 ], [ %.2295, %bb.u ], [ %i.co, %.loopexit773 ], [ %i.cr, %.loopexit772 ], [ %.2295, %bb.v ], [ %.2295, %bb.w ], [ %.2295, %bb.x ], [ %.2295, %bb.y ], [ %.8301.us, %bb.bg ]
  %.8292 = phi i8 [ %.0284, %bb.o ], [ %.2286, %.lr.ph571.split ], [ %.7291, %.lr.ph519.split ], [ %.7291, %.split537.us ], [ %.2286, %.critedge ], [ %.2286, %.split616.us ], [ %.3287567.us764, %bb.al ], [ %.2286, %bb.am ], [ %.2286, %bb.at ], [ %.7291, %.critedge2 ], [ %.2286, %bb.u ], [ %.2286, %.loopexit773 ], [ %.2286, %.loopexit772 ], [ %.2286, %bb.v ], [ %.2286, %bb.w ], [ %i.cs, %bb.x ], [ %.2286, %bb.y ], [ %.7291, %bb.bg ]
  %.8283 = phi i8 [ %.0275, %bb.o ], [ %.2277, %.lr.ph571.split ], [ %.7282, %.lr.ph519.split ], [ %.7282, %.split537.us ], [ %.2277, %.critedge ], [ %.2277, %.split616.us ], [ %.2277, %bb.al ], [ %.3278568.us759, %bb.am ], [ %.3278568.us759, %bb.at ], [ %.7282, %.critedge2 ], [ %.2277, %bb.u ], [ %i.cn, %.loopexit773 ], [ %.2277, %.loopexit772 ], [ %.2277, %bb.v ], [ %.2277, %bb.w ], [ %.2277, %bb.x ], [ %i.ct, %bb.y ], [ %.7282, %bb.bg ]
  %.13 = phi ptr [ %i.av, %bb.o ], [ %.6255, %.lr.ph571.split ], [ %.12, %.lr.ph519.split ], [ %.12, %.split537.us ], [ %.6255, %.critedge ], [ %.6255, %.split616.us ], [ %i.ee, %bb.al ], [ %.6255, %bb.am ], [ %.6255, %bb.at ], [ %.12, %.critedge2 ], [ %.6255, %bb.u ], [ %.6255, %.loopexit773 ], [ %.6255, %.loopexit772 ], [ %.6255, %bb.v ], [ %.6255, %bb.w ], [ %.6255, %bb.x ], [ %.6255, %bb.y ], [ %.12, %bb.bg ]
  %.9 = phi ptr [ %i.ae, %bb.o ], [ %.3, %.lr.ph571.split ], [ %.7, %.lr.ph519.split ], [ %i.gr, %.split537.us ], [ %.3, %.critedge ], [ %i.bp, %.split616.us ], [ %i.di, %bb.al ], [ %i.fe, %bb.am ], [ %i.fe, %bb.at ], [ %.7, %.critedge2 ], [ %i.bp, %bb.u ], [ %i.cl, %.loopexit773 ], [ %i.cq, %.loopexit772 ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %bb.x ], [ %i.bp, %bb.y ], [ %i.gr, %bb.bg ]
  %i.hf = load i32, ptr %1, align 4               ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 1
  %.not370 = icmp eq i32 %i.hf, 15
  %or.cond382 = or i1 %i.hg, %.not370
  br i1 %or.cond382, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.loopexit
  %i.hh = icmp eq i8 %.10313, 0
  br i1 %i.hh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.hi, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit, %bb.bi, %bb.bj
  %.11314 = phi i8 [ %.10313, %bb.bi ], [ 0, %bb.bj ], [ 0, %.loopexit ]
  store i8 %.5320, ptr %i.o, align 4
  store i8 %.11314, ptr %i.q, align 1
  store i8 %.8292, ptr %i.s, align 2
  store i8 %.8283, ptr %i.u, align 1
  store i8 %.9302, ptr %i.w, align 4
  store ptr %.9, ptr %i.e, align 8
  store ptr %.13, ptr %i.i, align 8
  store ptr %.19, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL16_SCSUFromUnicodeP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 13 uses
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 20 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 75 ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.dg, %bb.a
  %.0288 = phi ptr [ %i.g, %bb.a ], [ %.9297645, %bb.dg ] ; 8 uses
  %.0279 = phi ptr [ %i.k, %bb.a ], [ %i.qw, %bb.dg ] ; 10 uses
  %.0272 = phi i32 [ %i.q, %bb.a ], [ %i.qx, %bb.dg ] ; 9 uses
  %.0269 = phi i8 [ %i.s, %bb.a ], [ %.2271652, %bb.dg ] ; 16 uses
  %.0266 = phi i8 [ %i.u, %bb.a ], [ %.2268655, %bb.dg ] ; 30 uses
  %.0264 = phi i32 [ %i.y, %bb.a ], [ %.1265657, %bb.dg ] ; 15 uses
  %.0261 = phi i32 [ %i.aa, %bb.a ], [ 0, %bb.dg ] ; 6 uses
  %.not = icmp eq i8 %.0269, 0
  %i.ak = icmp ne i32 %.0261, 0
  %i.al = icmp sgt i32 %.0272, 0
  %or.cond5 = select i1 %i.ak, i1 %i.al, i1 false ; 2 uses
  br i1 %.not, label %bb.bi, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond5, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bh
  %.1289 = phi ptr [ %.5293, %bb.bh ], [ %.0288, %bb.c ] ; 5 uses
  %.1280 = phi ptr [ %.5284, %bb.bh ], [ %.0279, %bb.c ] ; 18 uses
  %.1273 = phi i32 [ %.5277, %bb.bh ], [ %.0272, %bb.c ] ; 14 uses
  %.1262 = phi i32 [ 0, %bb.bh ], [ %.0261, %bb.c ] ; 2 uses
  %i.am = icmp ult ptr %.1289, %i.i
  br i1 %i.am, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.an = icmp slt i32 %.1273, 1
  br i1 %i.an, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.1289, i64 2 ; 18 uses
  %i.ap = load i16, ptr %.1289, align 2           ; 10 uses
  %i.aq = zext i16 %i.ap to i32                   ; 17 uses
  %i.ar = add i16 %i.ap, -32
  %i.as = icmp ult i16 %i.ar, 96
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = trunc nuw nsw i16 %i.ap to i8
  store i8 %i.at, ptr %.1280, align 1
  br label %bb.bh

bb.h:                                             ; preds = %bb.f
  %i.au = icmp ult i16 %i.ap, 32
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = zext nneg i16 %i.ap to i64
  %i.aw = shl nuw nsw i64 1, %i.av
  %i.ax = and i64 %i.aw, 9729
  %.not326 = icmp eq i64 %i.ax, 0
  br i1 %.not326, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = trunc nuw nsw i16 %i.ap to i8
  store i8 %i.ay, ptr %.1280, align 1
  br label %bb.bh

bb.k:                                             ; preds = %bb.i
  %i.az = or disjoint i32 %i.aq, 256
  br label %bb.dd

bb.l:                                             ; preds = %bb.h
  %i.ba = sub i32 %i.aq, %.0264                   ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 128
  br i1 %i.bb, label %bb.bg, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = and i32 %i.aq, 63488
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.n, label %bb.aq

bb.n:                                             ; preds = %bb.m
  %i.be = and i32 %i.aq, 1024
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.n, %bb.c
  %.2290 = phi ptr [ %.0288, %bb.c ], [ %i.ao, %bb.n ] ; 5 uses
  %.2281 = phi ptr [ %.0279, %bb.c ], [ %.1280, %bb.n ] ; 7 uses
  %.2274 = phi i32 [ %.0272, %bb.c ], [ %.1273, %bb.n ] ; 4 uses
  %.2263 = phi i32 [ %.0261, %bb.c ], [ %i.aq, %bb.n ] ; 4 uses
  %i.bg = icmp ult ptr %.2290, %i.i
  br i1 %i.bg, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.bh = load i16, ptr %.2290, align 2
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  %i.bj = and i32 %i.bi, 64512
  %i.bk = icmp eq i32 %i.bj, 56320
  br i1 %i.bk, label %bb.q, label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.2290, i64 2 ; 4 uses
  %i.bm = shl i32 %.2263, 10
  %i.bn = add nsw i32 %i.bm, %i.bi                ; 11 uses
  %i.bo = add nsw i32 %i.bn, -56613888            ; 18 uses
  %i.bp = sub i32 %i.bo, %.0264                   ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 128
  br i1 %i.bq, label %bb.bg, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %i.v, align 4
  %i.bs = sub i32 %i.bo, %i.br
  %i.bt = icmp ult i32 %i.bs, 128
  br i1 %i.bt, label %select.unfold, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load i32, ptr %i.ab, align 4
  %i.bv = sub i32 %i.bo, %i.bu
  %i.bw = icmp ult i32 %i.bv, 128
  br i1 %i.bw, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load i32, ptr %i.ac, align 4
  %i.by = sub i32 %i.bo, %i.bx
  %i.bz = icmp ult i32 %i.by, 128
  br i1 %i.bz, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load i32, ptr %i.ad, align 4
  %i.cb = sub i32 %i.bo, %i.ca
  %i.cc = icmp ult i32 %i.cb, 128
  br i1 %i.cc, label %select.unfold, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i32, ptr %i.ae, align 4
  %i.ce = sub i32 %i.bo, %i.cd
  %i.cf = icmp ult i32 %i.ce, 128
  br i1 %i.cf, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.af, align 4
  %i.ch = sub i32 %i.bo, %i.cg
  %i.ci = icmp ult i32 %i.ch, 128
  br i1 %i.ci, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load i32, ptr %i.ag, align 4
  %i.ck = sub i32 %i.bo, %i.cj
  %i.cl = icmp ult i32 %i.ck, 128
  br i1 %i.cl, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load i32, ptr %i.ah, align 4
  %i.cn = sub i32 %i.bo, %i.cm
  %i.co = icmp ult i32 %i.cn, 128
  br i1 %i.co, label %select.unfold, label %_ZL9getWindowPKjj.exit

select.unfold:                                    ; preds = %bb.y, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.06.i.ph = phi i8 [ 0, %bb.r ], [ 6, %bb.x ], [ 5, %bb.w ], [ 4, %bb.v ], [ 3, %bb.u ], [ 2, %bb.t ], [ 1, %bb.s ], [ 7, %bb.y ] ; 5 uses
  %i.cp = zext nneg i8 %.06.i.ph to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = load i8, ptr %i.aj, align 1
  %i.ct = sext i8 %i.cs to i32                    ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %select.unfold
  %.019.i = phi i32 [ %i.ct, %select.unfold ], [ %spec.store.select.i, %bb.z ] ; 2 uses
  %i.cu = add nsw i32 %.019.i, -1
  %i.cv = icmp slt i32 %.019.i, 1
  %spec.store.select.i = select i1 %i.cv, i32 7, i32 %i.cu ; 4 uses
  %i.cw = sext i32 %spec.store.select.i to i64    ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ai, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %.not.i = icmp eq i8 %i.cy, %.06.i.ph
  br i1 %.not.i, label %bb.aa, label %bb.z, !llvm.loop !14

bb.aa:                                            ; preds = %bb.z
  %i.cz = add nsw i32 %spec.store.select.i, 1     ; 2 uses
  %i.da = icmp eq i32 %i.cz, 8
  %spec.store.select1.i = select i1 %i.da, i32 0, i32 %i.cz ; 2 uses
  %.not2021.i = icmp eq i32 %spec.store.select1.i, %i.ct
  br i1 %.not2021.i, label %_ZL16useDynamicWindowP8SCSUDataa.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %.023.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i ], [ %spec.store.select1.i, %bb.aa ] ; 3 uses
  %.122.i = phi i32 [ %.023.i, %.lr.ph.i ], [ %spec.store.select.i, %bb.aa ]
  %i.db = sext i32 %.023.i to i64                 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.ai, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = sext i32 %.122.i to i64
  %i.df = getelementptr inbounds i8, ptr %i.ai, i64 %i.de
  store i8 %i.dd, ptr %i.df, align 1
  %i.dg = add nsw i32 %.023.i, 1                  ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 8
  %spec.store.select2.i = select i1 %i.dh, i32 0, i32 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.aj, align 1
  %i.dj = sext i8 %i.di to i32
  %.not20.i = icmp eq i32 %spec.store.select2.i, %i.dj
  br i1 %.not20.i, label %_ZL16useDynamicWindowP8SCSUDataa.exit, label %.lr.ph.i, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit:            ; preds = %.lr.ph.i, %bb.aa
  %.pre-phi.i = phi i64 [ %i.cw, %bb.aa ], [ %i.db, %.lr.ph.i ]
  %i.dk = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i
  store i8 %.06.i.ph, ptr %i.dk, align 1
  %narrow = or disjoint i8 %.06.i.ph, 16
  %i.dl = zext nneg i8 %narrow to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = sub i32 %i.bo, %i.cr
  %i.do = or i32 %i.dn, %i.dm
  %i.dp = or i32 %i.do, 128
  br label %bb.dd

_ZL9getWindowPKjj.exit:                           ; preds = %bb.y
  %i.dq = add i32 %i.bn, -56614080
  %i.dr = icmp ult i32 %i.dq, 128
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %_ZL9getWindowPKjj.exit
  %.029.lcssa.wide.i = phi i32 [ 249, %_ZL9getWindowPKjj.exit ], [ 250, %bb.ac ], [ 251, %bb.ad ], [ 252, %bb.ae ], [ 253, %bb.af ], [ 254, %bb.ag ], [ 255, %bb.ah ]
  %.lcssa.i = phi i32 [ 192, %_ZL9getWindowPKjj.exit ], [ 592, %bb.ac ], [ 880, %bb.ad ], [ 1328, %bb.ae ], [ 12352, %bb.af ], [ 12448, %bb.ag ], [ 65376, %bb.ah ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 4
  br label %bb.an

bb.ac:                                            ; preds = %_ZL9getWindowPKjj.exit
  %i.ds = add i32 %i.bn, -56614480
  %i.dt = icmp ult i32 %i.ds, 128
  br i1 %i.dt, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = add i32 %i.bn, -56614768
  %i.dv = icmp ult i32 %i.du, 128
  br i1 %i.dv, label %bb.ab, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = add i32 %i.bn, -56615216
  %i.dx = icmp ult i32 %i.dw, 128
  br i1 %i.dx, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = add i32 %i.bn, -56626240
  %i.dz = icmp ult i32 %i.dy, 128
  br i1 %i.dz, label %bb.ab, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = add i32 %i.bn, -56626336
  %i.eb = icmp ult i32 %i.ea, 128
  br i1 %i.eb, label %bb.ab, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = add i32 %i.bn, -56679264
  %i.ed = icmp ult i32 %i.ec, 128
  br i1 %i.ed, label %bb.ab, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp ult i32 %i.bo, 128
  br i1 %i.ee, label %_ZL16getDynamicOffsetjPj.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ef = icmp ult i32 %i.bo, 13312
  %i.eg = and i32 %i.bo, -16384
  %i.eh = icmp eq i32 %i.eg, 65536
  %or.cond.i = or i1 %i.ef, %i.eh
  %i.ei = add i32 %i.bn, -56732672
  %i.ej = icmp ult i32 %i.ei, 12288
  %or.cond27.i = or i1 %i.ej, %or.cond.i
  br i1 %or.cond27.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ek = and i32 %i.bo, 130944                   ; 2 uses
  store i32 %i.ek, ptr %i.a, align 4
  %i.el = lshr i32 %i.bo, 7
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.em = icmp ne i32 %i.bo, 65279
  %i.en = add i32 %i.bn, -56671232
  %i.eo = icmp ult i32 %i.en, 8176
  %or.cond3.i = and i1 %i.em, %i.eo
  br i1 %or.cond3.i, label %bb.am, label %_ZL16getDynamicOffsetjPj.exit

bb.am:                                            ; preds = %bb.al
  %i.ep = and i32 %i.bo, 65408                    ; 2 uses
  store i32 %i.ep, ptr %i.a, align 4
  %i.eq = add nsw i32 %i.bn, -56657920
  %i.er = lshr i32 %i.eq, 7
  br label %bb.an

bb.an:                                            ; preds = %bb.ab, %bb.ak, %bb.am
  %i.es = phi i32 [ %i.ep, %bb.am ], [ %i.ek, %bb.ak ], [ %.lcssa.i, %bb.ab ] ; 3 uses
  %.023.i332.ph = phi i32 [ %i.er, %bb.am ], [ %i.el, %bb.ak ], [ %.029.lcssa.wide.i, %bb.ab ]
  %i.et = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.eu = sext i8 %i.et to i64
  %i.ev = getelementptr inbounds i8, ptr %i.ai, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1             ; 5 uses
  %i.ex = add i8 %i.et, 1                         ; 2 uses
  %i.ey = icmp eq i8 %i.ex, 8
  %spec.select.i333 = select i1 %i.ey, i8 0, i8 %i.ex
  store i8 %spec.select.i333, ptr %i.aj, align 1
  %i.ez = zext i8 %i.ew to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ez
  store i32 %i.es, ptr %i.fa, align 4
  %i.fb = load i8, ptr %i.aj, align 1
  %i.fc = sext i8 %i.fb to i32                    ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.019.i334 = phi i32 [ %i.fc, %bb.an ], [ %spec.store.select.i335, %bb.ao ] ; 2 uses
  %i.fd = add nsw i32 %.019.i334, -1
  %i.fe = icmp slt i32 %.019.i334, 1
  %spec.store.select.i335 = select i1 %i.fe, i32 7, i32 %i.fd ; 4 uses
  %i.ff = sext i32 %spec.store.select.i335 to i64 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ai, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %.not.i336 = icmp eq i8 %i.fh, %i.ew
  br i1 %.not.i336, label %bb.ap, label %bb.ao, !llvm.loop !14

bb.ap:                                            ; preds = %bb.ao
  %i.fi = add nsw i32 %spec.store.select.i335, 1  ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 8
  %spec.store.select1.i337 = select i1 %i.fj, i32 0, i32 %i.fi ; 2 uses
  %.not2021.i338 = icmp eq i32 %spec.store.select1.i337, %i.fc
  br i1 %.not2021.i338, label %_ZL16useDynamicWindowP8SCSUDataa.exit345, label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %bb.ap, %.lr.ph.i339
  %.023.i340 = phi i32 [ %spec.store.select2.i342, %.lr.ph.i339 ], [ %spec.store.select1.i337, %bb.ap ] ; 3 uses
  %.122.i341 = phi i32 [ %.023.i340, %.lr.ph.i339 ], [ %spec.store.select.i335, %bb.ap ]
  %i.fk = sext i32 %.023.i340 to i64              ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.ai, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = sext i32 %.122.i341 to i64
  %i.fo = getelementptr inbounds i8, ptr %i.ai, i64 %i.fn
  store i8 %i.fm, ptr %i.fo, align 1
  %i.fp = add nsw i32 %.023.i340, 1               ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 8
  %spec.store.select2.i342 = select i1 %i.fq, i32 0, i32 %i.fp ; 2 uses
  %i.fr = load i8, ptr %i.aj, align 1
  %i.fs = sext i8 %i.fr to i32
  %.not20.i343 = icmp eq i32 %spec.store.select2.i342, %i.fs
  br i1 %.not20.i343, label %_ZL16useDynamicWindowP8SCSUDataa.exit345, label %.lr.ph.i339, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit345:         ; preds = %.lr.ph.i339, %bb.ap
  %.pre-phi.i344 = phi i64 [ %i.ff, %bb.ap ], [ %i.fk, %.lr.ph.i339 ]
  %i.ft = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i344
  store i8 %i.ew, ptr %i.ft, align 1
  %i.fu = zext i8 %i.ew to i32
  %i.fv = shl nuw nsw i32 %i.fu, 21
  %i.fw = shl nuw nsw i32 %.023.i332.ph, 8
  %i.fx = add nsw i32 %i.fw, -131072
  %i.fy = sub i32 %i.bo, %i.es
  %i.fz = or i32 %i.fx, %i.fv
  %i.ga = or i32 %i.fz, %i.fy
  %i.gb = or i32 %i.ga, 184549504
  br label %bb.db

_ZL16getDynamicOffsetjPj.exit:                    ; preds = %bb.al, %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %.2281, i64 1
  store i8 15, ptr %.2281, align 1
  %i.gd = add nsw i32 %.2274, -1
  %i.ge = shl i32 %.2263, 16
  %i.gf = or disjoint i32 %i.ge, %i.bi
  br label %bb.db

bb.aq:                                            ; preds = %bb.m
  %i.gg = icmp ult i16 %i.ap, 160
  br i1 %i.gg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gh = and i32 %i.aq, 127
  %i.gi = or disjoint i32 %i.gh, 512
  br label %bb.dd

bb.as:                                            ; preds = %bb.aq
  %i.gj = icmp eq i16 %i.ap, -257
  %i.gk = icmp ugt i16 %i.ap, -17
  %or.cond3 = or i1 %i.gj, %i.gk
  br i1 %or.cond3, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gl = or disjoint i32 %i.aq, 917504
  br label %bb.dc

bb.au:                                            ; preds = %bb.as
  %2 = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.v, i32 noundef %i.aq) ; 6 uses
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %select.unfold418, label %_ZL9getWindowPKjj.exit348

select.unfold418:                                 ; preds = %bb.au
  %.not322 = icmp ult ptr %i.ao, %i.i
  %i.gm = zext nneg i8 %2 to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4            ; 5 uses
  br i1 %.not322, label %bb.av, label %_ZL16useDynamicWindowP8SCSUDataa.exit361

bb.av:                                            ; preds = %select.unfold418
  %i.gp = load i16, ptr %i.ao, align 2            ; 4 uses
  %i.gq = zext i16 %i.gp to i32                   ; 2 uses
  %i.gr = add i32 %i.go, 127
  %.not.i349 = icmp ult i32 %i.gr, %i.gq
  br i1 %.not.i349, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not7.i = icmp ugt i32 %i.go, %i.gq
  br i1 %.not7.i, label %bb.ax, label %_ZL16useDynamicWindowP8SCSUDataa.exit361

bb.ax:                                            ; preds = %bb.aw
  %i.gs = icmp ult i16 %i.gp, 128
  br i1 %i.gs, label %_ZL24isInOffsetWindowOrDirectjj.exit, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread

_ZL24isInOffsetWindowOrDirectjj.exit:             ; preds = %bb.ax
  %i.gt = icmp samesign ult i16 %i.gp, 32
  %i.gu = zext nneg i16 %i.gp to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = and i64 %i.gv, 9729
  %i.gx = icmp eq i64 %i.gw, 0
  %.not450 = select i1 %i.gt, i1 %i.gx, i1 false
  br i1 %.not450, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %_ZL16useDynamicWindowP8SCSUDataa.exit361

_ZL16useDynamicWindowP8SCSUDataa.exit361:         ; preds = %select.unfold418, %bb.aw, %_ZL24isInOffsetWindowOrDirectjj.exit
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %2)
  %narrow325 = add nuw nsw i8 %2, 16
  %i.gy = zext nneg i8 %narrow325 to i32
  %i.gz = shl nuw nsw i32 %i.gy, 8
  %i.ha = sub i32 %i.aq, %i.go
  %i.hb = or i32 %i.gz, %i.ha
  %i.hc = or i32 %i.hb, 128
  br label %bb.dd

_ZL24isInOffsetWindowOrDirectjj.exit.thread:      ; preds = %bb.ax, %bb.av, %_ZL24isInOffsetWindowOrDirectjj.exit
  %narrow324 = add nuw nsw i8 %2, 1
  %i.hd = zext nneg i8 %narrow324 to i32
  %i.he = shl nuw nsw i32 %i.hd, 8
  %i.hf = sub i32 %i.aq, %i.go
  %i.hg = or i32 %i.he, %i.hf
  %i.hh = or i32 %i.hg, 128
  br label %bb.dd

_ZL9getWindowPKjj.exit348:                        ; preds = %bb.au
  %i.hi = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull @_ZL13staticOffsets, i32 noundef %i.aq) ; 3 uses
  %i.hj = icmp sgt i8 %i.hi, -1
  br i1 %i.hj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZL9getWindowPKjj.exit348
  %narrow321 = add nuw nsw i8 %i.hi, 1
  %i.hk = zext nneg i8 %narrow321 to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = zext nneg i8 %i.hi to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr @_ZL13staticOffsets, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = sub i32 %i.aq, %i.ho
  %i.hq = or i32 %i.hp, %i.hl
  br label %bb.dd

bb.az:                                            ; preds = %_ZL9getWindowPKjj.exit348
  %i.hr = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %i.aq, ptr noundef %i.a) ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ht = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.hu = sext i8 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.ai, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1             ; 4 uses
  %i.hx = add i8 %i.ht, 1                         ; 2 uses
  %i.hy = icmp eq i8 %i.hx, 8
  %spec.select.i362 = select i1 %i.hy, i8 0, i8 %i.hx
  store i8 %spec.select.i362, ptr %i.aj, align 1
  %i.hz = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ia = zext i8 %i.hw to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ia
  store i32 %i.hz, ptr %i.ib, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.hw)
  %i.ic = zext i8 %i.hw to i32
  %i.id = shl nuw nsw i32 %i.ic, 16
  %i.ie = add nuw nsw i32 %i.id, 1572864
  %i.if = shl nuw nsw i32 %i.hr, 8
  %i.ig = sub i32 %i.aq, %i.hz
  %i.ih = or i32 %i.if, %i.ie
  %i.ii = or i32 %i.ih, %i.ig
  %i.ij = or i32 %i.ii, 128
  br label %bb.dc

bb.bb:                                            ; preds = %bb.az
  %i.ik = add i16 %i.ap, -13312
  %i.il = icmp ult i16 %i.ik, -23552
  br i1 %i.il, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %.not320 = icmp ult ptr %i.ao, %i.i
  br i1 %.not320, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.im = load i16, ptr %i.ao, align 2
  %i.in = add i16 %i.im, -13312
  %i.io = icmp ult i16 %i.in, -23552
  br i1 %i.io, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ip = or disjoint i32 %i.aq, 983040
  br label %bb.dc

bb.bf:                                            ; preds = %bb.bd, %bb.bb
  %i.iq = or disjoint i32 %i.aq, 917504
  br label %bb.dc

bb.bg:                                            ; preds = %bb.q, %bb.l
  %.sink = phi i32 [ %i.ba, %bb.l ], [ %i.bp, %bb.q ]
  %.2281.sink = phi ptr [ %.1280, %bb.l ], [ %.2281, %bb.q ] ; 2 uses
  %.3291 = phi ptr [ %i.ao, %bb.l ], [ %i.bl, %bb.q ]
  %.3275.in = phi i32 [ %.1273, %bb.l ], [ %.2274, %bb.q ]
  %i.ir = trunc nuw nsw i32 %.sink to i8
  %i.is = or disjoint i8 %i.ir, -128
  store i8 %i.is, ptr %.2281.sink, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.j, %bb.bg, %bb.g
  %.5293 = phi ptr [ %i.ao, %bb.g ], [ %.3291, %bb.bg ], [ %i.ao, %bb.j ]
  %.2281.pn.pn.pn = phi ptr [ %.1280, %bb.g ], [ %.2281.sink, %bb.bg ], [ %.1280, %bb.j ]
  %.5277.in = phi i32 [ %.1273, %bb.g ], [ %.3275.in, %bb.bg ], [ %.1273, %bb.j ]
  %.5284 = getelementptr inbounds nuw i8, ptr %.2281.pn.pn.pn, i64 1
  %.5277 = add nsw i32 %.5277.in, -1
  br label %bb.d, !llvm.loop !16

bb.bi:                                            ; preds = %bb.b
  br i1 %or.cond5, label %bb.bv, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.it = icmp ult ptr %.0288, %i.i
  br i1 %i.it, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.iu = icmp slt i32 %.0272, 1
  br i1 %i.iu, label %.loopexit.sink.split, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %.0288, i64 2 ; 6 uses
  %i.iw = load i16, ptr %.0288, align 2           ; 4 uses
  %i.ix = zext i16 %i.iw to i32                   ; 3 uses
  %i.iy = add nsw i32 %i.ix, -13312               ; 2 uses
  %i.iz = icmp ult i32 %i.iy, 41984
  br i1 %i.iz, label %bb.bk, label %.loopexit599

bb.bk:                                            ; preds = %bb.bj
  %.not319.peel = icmp eq i32 %.0272, 1
  br i1 %.not319.peel, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ja = lshr i16 %i.iw, 8
  %i.jb = trunc nuw i16 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %.0279, i64 1
  store i8 %i.jb, ptr %.0279, align 1
  %i.jd = trunc i16 %i.iw to i8
  %i.je = getelementptr inbounds nuw i8, ptr %.0279, i64 2 ; 3 uses
  store i8 %i.jd, ptr %i.jc, align 1
  %i.jf = icmp ult ptr %i.iv, %i.i
  br i1 %i.jf, label %.lr.ph.preheader760, label %.loopexit

.lr.ph.preheader760:                              ; preds = %bb.bl
  %i.jg = icmp slt i32 %.0272, 3
  br i1 %i.jg, label %.loopexit.sink.split, label %.lr.ph810

.lr.ph:                                           ; preds = %bb.bn
  %i.jh = icmp slt i32 %.6278518809.in, 5
  br i1 %i.jh, label %.loopexit.sink.split, label %.lr.ph810, !llvm.loop !17

.lr.ph810:                                        ; preds = %.lr.ph.preheader760, %.lr.ph
  %.6278518809.in = phi i32 [ %.6278518809, %.lr.ph ], [ %.0272, %.lr.ph.preheader760 ] ; 2 uses
  %.6294516808 = phi ptr [ %i.ji, %.lr.ph ], [ %i.iv, %.lr.ph.preheader760 ] ; 2 uses
  %.6285517807 = phi ptr [ %i.jr, %.lr.ph ], [ %i.je, %.lr.ph.preheader760 ] ; 5 uses
  %.6278518809 = add nsw i32 %.6278518809.in, -2  ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.6294516808, i64 2 ; 6 uses
  %i.jj = load i16, ptr %.6294516808, align 2     ; 4 uses
  %i.jk = zext i16 %i.jj to i32                   ; 3 uses
  %i.jl = add nsw i32 %i.jk, -13312               ; 2 uses
  %i.jm = icmp ult i32 %i.jl, 41984
  br i1 %i.jm, label %bb.bm, label %.loopexit599

bb.bm:                                            ; preds = %.lr.ph810
  %.not319 = icmp eq i32 %.6278518809, 1
  br i1 %.not319, label %.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jn = lshr i16 %i.jj, 8
  %i.jo = trunc nuw i16 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.6285517807, i64 1
  store i8 %i.jo, ptr %.6285517807, align 1
  %i.jq = trunc i16 %i.jj to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.6285517807, i64 2 ; 3 uses
  store i8 %i.jq, ptr %i.jp, align 1
  %i.js = icmp ult ptr %i.ji, %i.i
  br i1 %i.js, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit599:                                     ; preds = %.lr.ph810, %bb.bj
  %.lcssa555 = phi ptr [ %i.iv, %bb.bj ], [ %i.ji, %.lr.ph810 ] ; 10 uses
  %.lcssa552 = phi i16 [ %i.iw, %bb.bj ], [ %i.jj, %.lr.ph810 ] ; 3 uses
  %.lcssa549 = phi i32 [ %i.ix, %bb.bj ], [ %i.jk, %.lr.ph810 ] ; 11 uses
  %.lcssa546 = phi i32 [ %i.iy, %bb.bj ], [ %i.jl, %.lr.ph810 ]
  %.6278518.lcssa540 = phi i32 [ %.0272, %bb.bj ], [ %.6278518809, %.lr.ph810 ] ; 7 uses
  %.6285517.lcssa537 = phi ptr [ %.0279, %bb.bj ], [ %.6285517807, %.lr.ph810 ] ; 8 uses
  %i.jt = icmp ugt i32 %.lcssa546, 48895
  br i1 %i.jt, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %.loopexit599
  %i.ju = icmp ult ptr %.lcssa555, %i.i
  br i1 %i.ju, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jv = load i16, ptr %.lcssa555, align 2
  %i.jw = add i16 %i.jv, -13312
  %i.jx = icmp ult i16 %i.jw, -23552
  br i1 %i.jx, label %bb.dd, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jy = add i16 %.lcssa552, -48
  %i.jz = icmp ult i16 %i.jy, 10
  %i.ka = and i16 %.lcssa552, -33
  %i.kb = add i16 %i.ka, -65
  %i.kc = icmp ult i16 %i.kb, 26
  %or.cond331 = or i1 %i.jz, %i.kc
  br i1 %or.cond331, label %bb.br, label %.lr.ph.i371

bb.br:                                            ; preds = %bb.bq
  %i.kd = zext i8 %.0266 to i32
  %i.ke = shl nuw nsw i32 %i.kd, 8
  %i.kf = add nuw nsw i32 %i.ke, 57344
  %i.kg = or i32 %i.kf, %.lcssa549
  br label %bb.dd

.lr.ph.i371:                                      ; preds = %bb.bq
  %4 = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.v, i32 noundef %.lcssa549) ; 5 uses
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %_ZL16useDynamicWindowP8SCSUDataa.exit377, label %_ZL9getWindowPKjj.exit365

_ZL16useDynamicWindowP8SCSUDataa.exit377:         ; preds = %.lr.ph.i371
  %6 = zext nneg i8 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %6
  %8 = load i32, ptr %7, align 4                  ; 2 uses
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %4)
  %i.kh = zext nneg i8 %4 to i32
  %i.ki = shl nuw nsw i32 %i.kh, 8
  %i.kj = sub i32 %.lcssa549, %8
  %9 = add nuw nsw i32 %i.ki, 57472
  %i.kk = or i32 %9, %i.kj
  br label %bb.dd

_ZL9getWindowPKjj.exit365:                        ; preds = %.lr.ph.i371
  %i.kl = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %.lcssa549, ptr noundef %i.a) ; 2 uses
  %i.km = icmp sgt i32 %i.kl, -1
  br i1 %i.km, label %bb.bs, label %bb.dd

bb.bs:                                            ; preds = %_ZL9getWindowPKjj.exit365
  %i.kn = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.ko = sext i8 %i.kn to i64
  %i.kp = getelementptr inbounds i8, ptr %i.ai, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1             ; 4 uses
  %i.kr = add i8 %i.kn, 1                         ; 2 uses
  %i.ks = icmp eq i8 %i.kr, 8
  %spec.select.i378 = select i1 %i.ks, i8 0, i8 %i.kr
  store i8 %spec.select.i378, ptr %i.aj, align 1
  %i.kt = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ku = zext i8 %i.kq to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ku
  store i32 %i.kt, ptr %i.kv, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.kq)
  %i.kw = zext i8 %i.kq to i32
  %i.kx = shl nuw nsw i32 %i.kw, 16
  %i.ky = add nuw nsw i32 %i.kx, 15204352
  %i.kz = shl nuw nsw i32 %i.kl, 8
  %i.la = sub i32 %.lcssa549, %i.kt
  %i.lb = or i32 %i.kz, %i.ky
  %i.lc = or i32 %i.lb, %i.la
  %i.ld = or i32 %i.lc, 128
  br label %bb.dc

bb.bt:                                            ; preds = %.loopexit599
  %i.le = icmp ult i16 %.lcssa552, -8192
  br i1 %i.le, label %bb.bu, label %bb.da

bb.bu:                                            ; preds = %bb.bt
  %i.lf = and i32 %.lcssa549, 1024
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bv, label %.loopexit.sink.split

bb.bv:                                            ; preds = %bb.bu, %bb.bi
  %.7295 = phi ptr [ %.0288, %bb.bi ], [ %.lcssa555, %bb.bu ] ; 5 uses
  %.7286 = phi ptr [ %.0279, %bb.bi ], [ %.6285517.lcssa537, %bb.bu ] ; 5 uses
  %.7 = phi i32 [ %.0272, %bb.bi ], [ %.6278518.lcssa540, %bb.bu ] ; 3 uses
  %.4 = phi i32 [ %.0261, %bb.bi ], [ %.lcssa549, %bb.bu ] ; 5 uses
  %i.lh = icmp ult ptr %.7295, %i.i
  br i1 %i.lh, label %bb.bw, label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.li = load i16, ptr %.7295, align 2
  %i.lj = zext i16 %i.li to i32                   ; 3 uses
  %i.lk = and i32 %i.lj, 64512
  %i.ll = icmp eq i32 %i.lk, 56320
  br i1 %i.ll, label %bb.bx, label %.loopexit.sink.split

bb.bx:                                            ; preds = %bb.bw
  %i.lm = getelementptr inbounds nuw i8, ptr %.7295, i64 2 ; 7 uses
  %i.ln = shl i32 %.4, 10
  %i.lo = add nsw i32 %i.ln, %i.lj                ; 11 uses
  %i.lp = add nsw i32 %i.lo, -56613888            ; 17 uses
  %i.lq = load i32, ptr %i.v, align 4
  %i.lr = sub i32 %i.lp, %i.lq
  %i.ls = icmp ult i32 %i.lr, 128
  br i1 %i.ls, label %select.unfold427, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lt = load i32, ptr %i.ab, align 4
  %i.lu = sub i32 %i.lp, %i.lt
  %i.lv = icmp ult i32 %i.lu, 128
  br i1 %i.lv, label %select.unfold427, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lw = load i32, ptr %i.ac, align 4
  %i.lx = sub i32 %i.lp, %i.lw
  %i.ly = icmp ult i32 %i.lx, 128
  br i1 %i.ly, label %select.unfold427, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lz = load i32, ptr %i.ad, align 4
  %i.ma = sub i32 %i.lp, %i.lz
  %i.mb = icmp ult i32 %i.ma, 128
  br i1 %i.mb, label %select.unfold427, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mc = load i32, ptr %i.ae, align 4
  %i.md = sub i32 %i.lp, %i.mc
  %i.me = icmp ult i32 %i.md, 128
  br i1 %i.me, label %select.unfold427, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mf = load i32, ptr %i.af, align 4
  %i.mg = sub i32 %i.lp, %i.mf
  %i.mh = icmp ult i32 %i.mg, 128
  br i1 %i.mh, label %select.unfold427, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mi = load i32, ptr %i.ag, align 4
  %i.mj = sub i32 %i.lp, %i.mi
  %i.mk = icmp ult i32 %i.mj, 128
  br i1 %i.mk, label %select.unfold427, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ml = load i32, ptr %i.ah, align 4
  %i.mm = sub i32 %i.lp, %i.ml
  %i.mn = icmp ult i32 %i.mm, 128
  br i1 %i.mn, label %select.unfold427, label %_ZL9getWindowPKjj.exit381

select.unfold427:                                 ; preds = %bb.ce, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %.06.i380.ph = phi i8 [ 0, %bb.bx ], [ 6, %bb.cd ], [ 5, %bb.cc ], [ 4, %bb.cb ], [ 3, %bb.ca ], [ 2, %bb.bz ], [ 1, %bb.by ], [ 7, %bb.ce ] ; 5 uses
  %i.mo = icmp ult ptr %i.lm, %i.i
  br i1 %i.mo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %select.unfold427
  %i.mp = load i16, ptr %i.lm, align 2
  %i.mq = add i16 %i.mp, -13312
  %i.mr = icmp ult i16 %i.mq, -23552
  br i1 %i.mr, label %_ZL9getWindowPKjj.exit381, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %select.unfold427
  %i.ms = zext nneg i8 %.06.i380.ph to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4            ; 2 uses
  %i.mv = load i8, ptr %i.aj, align 1
  %i.mw = sext i8 %i.mv to i32                    ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %bb.cg
  %.019.i382 = phi i32 [ %i.mw, %bb.cg ], [ %spec.store.select.i383, %bb.ch ] ; 2 uses
  %i.mx = add nsw i32 %.019.i382, -1
  %i.my = icmp slt i32 %.019.i382, 1
  %spec.store.select.i383 = select i1 %i.my, i32 7, i32 %i.mx ; 4 uses
  %i.mz = sext i32 %spec.store.select.i383 to i64 ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %i.ai, i64 %i.mz
  %i.nb = load i8, ptr %i.na, align 1
  %.not.i384 = icmp eq i8 %i.nb, %.06.i380.ph
  br i1 %.not.i384, label %bb.ci, label %bb.ch, !llvm.loop !14

bb.ci:                                            ; preds = %bb.ch
  %i.nc = add nsw i32 %spec.store.select.i383, 1  ; 2 uses
  %i.nd = icmp eq i32 %i.nc, 8
  %spec.store.select1.i385 = select i1 %i.nd, i32 0, i32 %i.nc ; 2 uses
  %.not2021.i386 = icmp eq i32 %spec.store.select1.i385, %i.mw
  br i1 %.not2021.i386, label %_ZL16useDynamicWindowP8SCSUDataa.exit393, label %.lr.ph.i387

.lr.ph.i387:                                      ; preds = %bb.ci, %.lr.ph.i387
  %.023.i388 = phi i32 [ %spec.store.select2.i390, %.lr.ph.i387 ], [ %spec.store.select1.i385, %bb.ci ] ; 3 uses
  %.122.i389 = phi i32 [ %.023.i388, %.lr.ph.i387 ], [ %spec.store.select.i383, %bb.ci ]
  %i.ne = sext i32 %.023.i388 to i64              ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %i.ai, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1
  %i.nh = sext i32 %.122.i389 to i64
  %i.ni = getelementptr inbounds i8, ptr %i.ai, i64 %i.nh
  store i8 %i.ng, ptr %i.ni, align 1
  %i.nj = add nsw i32 %.023.i388, 1               ; 2 uses
  %i.nk = icmp eq i32 %i.nj, 8
  %spec.store.select2.i390 = select i1 %i.nk, i32 0, i32 %i.nj ; 2 uses
  %i.nl = load i8, ptr %i.aj, align 1
  %i.nm = sext i8 %i.nl to i32
  %.not20.i391 = icmp eq i32 %spec.store.select2.i390, %i.nm
  br i1 %.not20.i391, label %_ZL16useDynamicWindowP8SCSUDataa.exit393, label %.lr.ph.i387, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit393:         ; preds = %.lr.ph.i387, %bb.ci
  %.pre-phi.i392 = phi i64 [ %i.mz, %bb.ci ], [ %i.ne, %.lr.ph.i387 ]
  %i.nn = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i392
  store i8 %.06.i380.ph, ptr %i.nn, align 1
  %i.no = zext nneg i8 %.06.i380.ph to i32
  %i.np = shl nuw nsw i32 %i.no, 8
  %i.nq = sub i32 %i.lp, %i.mu
  %i.nr = or i32 %i.np, %i.nq
  %i.ns = or i32 %i.nr, 57472
  br label %bb.dd

_ZL9getWindowPKjj.exit381:                        ; preds = %bb.ce, %bb.cf
  %i.nt = icmp ult ptr %i.lm, %i.i
  br i1 %i.nt, label %bb.cj, label %_ZL16getDynamicOffsetjPj.exit400

bb.cj:                                            ; preds = %_ZL9getWindowPKjj.exit381
  %i.nu = load i16, ptr %i.lm, align 2
  %i.nv = trunc i32 %.4 to i16
  %i.nw = icmp eq i16 %i.nu, %i.nv
  br i1 %i.nw, label %bb.ck, label %_ZL16getDynamicOffsetjPj.exit400

bb.ck:                                            ; preds = %bb.cj
  %i.nx = add i32 %i.lo, -56614080
  %i.ny = icmp ult i32 %i.nx, 128
  br i1 %i.ny, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck
  %.029.lcssa.wide.i398 = phi i32 [ 249, %bb.ck ], [ 250, %bb.cm ], [ 251, %bb.cn ], [ 252, %bb.co ], [ 253, %bb.cp ], [ 254, %bb.cq ], [ 255, %bb.cr ]
  %.lcssa.i399 = phi i32 [ 192, %bb.ck ], [ 592, %bb.cm ], [ 880, %bb.cn ], [ 1328, %bb.co ], [ 12352, %bb.cp ], [ 12448, %bb.cq ], [ 65376, %bb.cr ] ; 2 uses
  store i32 %.lcssa.i399, ptr %i.a, align 4
  br label %bb.cx

bb.cm:                                            ; preds = %bb.ck
  %i.nz = add i32 %i.lo, -56614480
  %i.oa = icmp ult i32 %i.nz, 128
  br i1 %i.oa, label %bb.cl, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ob = add i32 %i.lo, -56614768
  %i.oc = icmp ult i32 %i.ob, 128
  br i1 %i.oc, label %bb.cl, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.od = add i32 %i.lo, -56615216
  %i.oe = icmp ult i32 %i.od, 128
  br i1 %i.oe, label %bb.cl, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.of = add i32 %i.lo, -56626240
  %i.og = icmp ult i32 %i.of, 128
  br i1 %i.og, label %bb.cl, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oh = add i32 %i.lo, -56626336
  %i.oi = icmp ult i32 %i.oh, 128
  br i1 %i.oi, label %bb.cl, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.oj = add i32 %i.lo, -56679264
  %i.ok = icmp ult i32 %i.oj, 128
  br i1 %i.ok, label %bb.cl, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ol = icmp ult i32 %i.lp, 128
  br i1 %i.ol, label %_ZL16getDynamicOffsetjPj.exit400, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.om = icmp ult i32 %i.lp, 13312
  %i.on = and i32 %i.lp, -16384
  %i.oo = icmp eq i32 %i.on, 65536
  %or.cond.i394 = or i1 %i.om, %i.oo
  %i.op = add i32 %i.lo, -56732672
  %i.oq = icmp ult i32 %i.op, 12288
  %or.cond27.i395 = or i1 %i.oq, %or.cond.i394
  br i1 %or.cond27.i395, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.or = and i32 %i.lp, 130944                   ; 2 uses
  store i32 %i.or, ptr %i.a, align 4
  %i.os = lshr i32 %i.lp, 7
  br label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  %i.ot = icmp ne i32 %i.lp, 65279
  %i.ou = add i32 %i.lo, -56671232
  %i.ov = icmp ult i32 %i.ou, 8176
  %or.cond3.i396 = and i1 %i.ot, %i.ov
  br i1 %or.cond3.i396, label %bb.cw, label %_ZL16getDynamicOffsetjPj.exit400

bb.cw:                                            ; preds = %bb.cv
  %i.ow = and i32 %i.lp, 65408                    ; 2 uses
  store i32 %i.ow, ptr %i.a, align 4
  %i.ox = add nsw i32 %i.lo, -56657920
  %i.oy = lshr i32 %i.ox, 7
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cl, %bb.cu, %bb.cw
  %i.oz = phi i32 [ %i.ow, %bb.cw ], [ %i.or, %bb.cu ], [ %.lcssa.i399, %bb.cl ] ; 3 uses
  %.023.i397.ph = phi i32 [ %i.oy, %bb.cw ], [ %i.os, %bb.cu ], [ %.029.lcssa.wide.i398, %bb.cl ]
  %i.pa = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.pb = sext i8 %i.pa to i64
  %i.pc = getelementptr inbounds i8, ptr %i.ai, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1             ; 5 uses
  %i.pe = add i8 %i.pa, 1                         ; 2 uses
  %i.pf = icmp eq i8 %i.pe, 8
  %spec.select.i401 = select i1 %i.pf, i8 0, i8 %i.pe
  store i8 %spec.select.i401, ptr %i.aj, align 1
  %i.pg = zext i8 %i.pd to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.pg
  store i32 %i.oz, ptr %i.ph, align 4
  %i.pi = load i8, ptr %i.aj, align 1
  %i.pj = sext i8 %i.pi to i32                    ; 2 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %bb.cx
  %.019.i402 = phi i32 [ %i.pj, %bb.cx ], [ %spec.store.select.i403, %bb.cy ] ; 2 uses
  %i.pk = add nsw i32 %.019.i402, -1
  %i.pl = icmp slt i32 %.019.i402, 1
  %spec.store.select.i403 = select i1 %i.pl, i32 7, i32 %i.pk ; 4 uses
  %i.pm = sext i32 %spec.store.select.i403 to i64 ; 2 uses
  %i.pn = getelementptr inbounds i8, ptr %i.ai, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1
  %.not.i404 = icmp eq i8 %i.po, %i.pd
  br i1 %.not.i404, label %bb.cz, label %bb.cy, !llvm.loop !14

bb.cz:                                            ; preds = %bb.cy
  %i.pp = add nsw i32 %spec.store.select.i403, 1  ; 2 uses
  %i.pq = icmp eq i32 %i.pp, 8
  %spec.store.select1.i405 = select i1 %i.pq, i32 0, i32 %i.pp ; 2 uses
  %.not2021.i406 = icmp eq i32 %spec.store.select1.i405, %i.pj
  br i1 %.not2021.i406, label %_ZL16useDynamicWindowP8SCSUDataa.exit413, label %.lr.ph.i407

.lr.ph.i407:                                      ; preds = %bb.cz, %.lr.ph.i407
  %.023.i408 = phi i32 [ %spec.store.select2.i410, %.lr.ph.i407 ], [ %spec.store.select1.i405, %bb.cz ] ; 3 uses
  %.122.i409 = phi i32 [ %.023.i408, %.lr.ph.i407 ], [ %spec.store.select.i403, %bb.cz ]
  %i.pr = sext i32 %.023.i408 to i64              ; 2 uses
  %i.ps = getelementptr inbounds i8, ptr %i.ai, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1
  %i.pu = sext i32 %.122.i409 to i64
  %i.pv = getelementptr inbounds i8, ptr %i.ai, i64 %i.pu
  store i8 %i.pt, ptr %i.pv, align 1
  %i.pw = add nsw i32 %.023.i408, 1               ; 2 uses
  %i.px = icmp eq i32 %i.pw, 8
  %spec.store.select2.i410 = select i1 %i.px, i32 0, i32 %i.pw ; 2 uses
  %i.py = load i8, ptr %i.aj, align 1
  %i.pz = sext i8 %i.py to i32
  %.not20.i411 = icmp eq i32 %spec.store.select2.i410, %i.pz
  br i1 %.not20.i411, label %_ZL16useDynamicWindowP8SCSUDataa.exit413, label %.lr.ph.i407, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit413:         ; preds = %.lr.ph.i407, %bb.cz
  %.pre-phi.i412 = phi i64 [ %i.pm, %bb.cz ], [ %i.pr, %.lr.ph.i407 ]
  %i.qa = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i412
  store i8 %i.pd, ptr %i.qa, align 1
  %i.qb = zext i8 %i.pd to i32
  %i.qc = shl nuw nsw i32 %i.qb, 21
  %i.qd = shl nuw nsw i32 %.023.i397.ph, 8
  %i.qe = add nuw nsw i32 %i.qd, 268304384
  %i.qf = sub i32 %i.lp, %i.oz
  %i.qg = or i32 %i.qe, %i.qc
  %i.qh = or i32 %i.qg, %i.qf
  %i.qi = or i32 %i.qh, -251658112
  br label %bb.db

_ZL16getDynamicOffsetjPj.exit400:                 ; preds = %bb.cv, %bb.cs, %bb.cj, %_ZL9getWindowPKjj.exit381
  %i.qj = shl i32 %.4, 16
  %i.qk = or disjoint i32 %i.qj, %i.lj
  br label %bb.db

bb.da:                                            ; preds = %bb.bt
  %i.ql = or disjoint i32 %.lcssa549, 15728640
  br label %bb.dc

.loopexit.sink.split:                             ; preds = %bb.bu, %bb.bw, %.lr.ph.preheader, %bb.n, %bb.p, %bb.e, %.lr.ph.preheader760, %.lr.ph, %bb.do, %bb.dl
  %.sink759 = phi i32 [ 15, %bb.do ], [ 15, %.lr.ph ], [ 15, %bb.dl ], [ 15, %bb.e ], [ 12, %bb.bw ], [ 12, %bb.bu ], [ 12, %bb.p ], [ 15, %.lr.ph.preheader ], [ 12, %bb.n ], [ 15, %.lr.ph.preheader760 ]
  %.8296.ph = phi ptr [ %.9297441, %bb.do ], [ %i.ji, %.lr.ph ], [ %.9297441, %bb.dl ], [ %.1289, %bb.e ], [ %.7295, %bb.bw ], [ %.lcssa555, %bb.bu ], [ %.2290, %bb.p ], [ %.0288, %.lr.ph.preheader ], [ %i.ao, %bb.n ], [ %i.iv, %.lr.ph.preheader760 ]
  %.8287.ph = phi ptr [ %i.rx, %bb.do ], [ %i.jr, %.lr.ph ], [ %.9442, %bb.dl ], [ %.1280, %bb.e ], [ %.7286, %bb.bw ], [ %.6285517.lcssa537, %bb.bu ], [ %.2281, %bb.p ], [ %.0279, %.lr.ph.preheader ], [ %.1280, %bb.n ], [ %i.je, %.lr.ph.preheader760 ]
  %.1270.ph = phi i8 [ %.2271444, %bb.do ], [ 0, %.lr.ph ], [ %.2271444, %bb.dl ], [ %.0269, %bb.e ], [ 0, %bb.bw ], [ 0, %bb.bu ], [ %.0269, %bb.p ], [ 0, %.lr.ph.preheader ], [ %.0269, %bb.n ], [ 0, %.lr.ph.preheader760 ]
  %.1267.ph = phi i8 [ %.2268445, %bb.do ], [ %.0266, %.lr.ph ], [ %.2268445, %bb.dl ], [ %.0266, %.lr.ph.preheader760 ], [ %.0266, %bb.e ], [ %.0266, %bb.p ], [ %.0266, %bb.n ], [ %.0266, %.lr.ph.preheader ], [ %.0266, %bb.bw ], [ %.0266, %bb.bu ]
  %.5.ph = phi i32 [ 0, %bb.do ], [ 0, %.lr.ph ], [ %.8443, %bb.dl ], [ %.1262, %bb.e ], [ %.4, %bb.bw ], [ %.lcssa549, %bb.bu ], [ %.2263, %bb.p ], [ %.0261, %.lr.ph.preheader ], [ %i.aq, %bb.n ], [ 0, %.lr.ph.preheader760 ]
  store i32 %.sink759, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.d, %bb.bv, %.preheader, %bb.bl, %bb.bn, %.loopexit.sink.split
  %.8296 = phi ptr [ %i.ji, %bb.bn ], [ %.8296.ph, %.loopexit.sink.split ], [ %.0288, %.preheader ], [ %.7295, %bb.bv ], [ %.2290, %bb.o ], [ %.1289, %bb.d ], [ %i.iv, %bb.bl ]
  %.8287 = phi ptr [ %i.jr, %bb.bn ], [ %.8287.ph, %.loopexit.sink.split ], [ %.0279, %.preheader ], [ %.7286, %bb.bv ], [ %.2281, %bb.o ], [ %.1280, %bb.d ], [ %i.je, %bb.bl ]
  %.1270 = phi i8 [ 0, %bb.bn ], [ %.1270.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.bv ], [ %.0269, %bb.o ], [ %.0269, %bb.d ], [ 0, %bb.bl ]
  %.1267 = phi i8 [ %.0266, %bb.bn ], [ %.1267.ph, %.loopexit.sink.split ], [ %.0266, %bb.bl ], [ %.0266, %.preheader ], [ %.0266, %bb.bv ], [ %.0266, %bb.d ], [ %.0266, %bb.o ]
  %.5 = phi i32 [ 0, %bb.bn ], [ %.5.ph, %.loopexit.sink.split ], [ %.0261, %.preheader ], [ %.4, %bb.bv ], [ %.2263, %bb.o ], [ %.1262, %bb.d ], [ 0, %bb.bl ]
  store i8 %.1270, ptr %i.r, align 4
  store i8 %.1267, ptr %i.t, align 1
  store i32 %.5, ptr %i.z, align 4
  store ptr %.8296, ptr %i.f, align 8
  store ptr %.8287, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.db:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit400, %_ZL16useDynamicWindowP8SCSUDataa.exit413, %_ZL16getDynamicOffsetjPj.exit, %_ZL16useDynamicWindowP8SCSUDataa.exit345
  %.9297.jt4 = phi ptr [ %i.lm, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %i.bl, %_ZL16getDynamicOffsetjPj.exit ], [ %i.bl, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %i.lm, %_ZL16getDynamicOffsetjPj.exit400 ] ; 2 uses
  %.9.jt4 = phi ptr [ %.7286, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %i.gc, %_ZL16getDynamicOffsetjPj.exit ], [ %.2281, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.7286, %_ZL16getDynamicOffsetjPj.exit400 ] ; 3 uses
  %.8.jt4 = phi i32 [ %.7, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %i.gd, %_ZL16getDynamicOffsetjPj.exit ], [ %.2274, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.7, %_ZL16getDynamicOffsetjPj.exit400 ] ; 3 uses
  %.2271.jt4 = phi i8 [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ 0, %_ZL16getDynamicOffsetjPj.exit ], [ %.0269, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ 0, %_ZL16getDynamicOffsetjPj.exit400 ] ; 2 uses
  %.2268.jt4 = phi i8 [ %i.pd, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %.0266, %_ZL16getDynamicOffsetjPj.exit ], [ %i.ew, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.0266, %_ZL16getDynamicOffsetjPj.exit400 ] ; 2 uses
  %.1265.jt4 = phi i32 [ %i.oz, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %.0264, %_ZL16getDynamicOffsetjPj.exit ], [ %i.es, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.0264, %_ZL16getDynamicOffsetjPj.exit400 ]
  %.6.jt4 = phi i32 [ %i.qi, %_ZL16useDynamicWindowP8SCSUDataa.exit413 ], [ %i.gf, %_ZL16getDynamicOffsetjPj.exit ], [ %i.gb, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %i.qk, %_ZL16getDynamicOffsetjPj.exit400 ] ; 3 uses
  %.not327.jt4 = icmp samesign ult i32 %.8.jt4, 4
  br i1 %.not327.jt4, label %.thread, label %bb.de

bb.dc:                                            ; preds = %bb.bs, %bb.da, %bb.bf, %bb.be, %bb.ba, %bb.at
  %.9297.jt3 = phi ptr [ %i.ao, %bb.ba ], [ %.lcssa555, %bb.bs ], [ %i.ao, %bb.at ], [ %i.ao, %bb.be ], [ %i.ao, %bb.bf ], [ %.lcssa555, %bb.da ] ; 2 uses
  %.9.jt3 = phi ptr [ %.1280, %bb.ba ], [ %.6285517.lcssa537, %bb.bs ], [ %.1280, %bb.at ], [ %.1280, %bb.be ], [ %.1280, %bb.bf ], [ %.6285517.lcssa537, %bb.da ] ; 2 uses
  %.8.jt3 = phi i32 [ %.1273, %bb.ba ], [ %.6278518.lcssa540, %bb.bs ], [ %.1273, %bb.at ], [ %.1273, %bb.be ], [ %.1273, %bb.bf ], [ %.6278518.lcssa540, %bb.da ] ; 3 uses
  %.2271.jt3 = phi i8 [ %.0269, %bb.ba ], [ 1, %bb.bs ], [ %.0269, %bb.at ], [ 0, %bb.be ], [ %.0269, %bb.bf ], [ 0, %bb.da ] ; 2 uses
  %.2268.jt3 = phi i8 [ %i.hw, %bb.ba ], [ %i.kq, %bb.bs ], [ %.0266, %bb.at ], [ %.0266, %bb.be ], [ %.0266, %bb.bf ], [ %.0266, %bb.da ] ; 2 uses
  %.1265.jt3 = phi i32 [ %i.hz, %bb.ba ], [ %i.kt, %bb.bs ], [ %.0264, %bb.at ], [ %.0264, %bb.be ], [ %.0264, %bb.bf ], [ %.0264, %bb.da ]
  %.6.jt3 = phi i32 [ %i.ij, %bb.ba ], [ %i.ld, %bb.bs ], [ %i.gl, %bb.at ], [ %i.ip, %bb.be ], [ %i.iq, %bb.bf ], [ %i.ql, %bb.da ] ; 2 uses
  %.not327.jt3 = icmp samesign ult i32 %.8.jt3, 3
  br i1 %.not327.jt3, label %.thread, label %bb.df

bb.dd:                                            ; preds = %_ZL9getWindowPKjj.exit365, %_ZL16useDynamicWindowP8SCSUDataa.exit377, %bb.br, %bb.bp, %_ZL16useDynamicWindowP8SCSUDataa.exit393, %_ZL16useDynamicWindowP8SCSUDataa.exit, %bb.ay, %_ZL24isInOffsetWindowOrDirectjj.exit.thread, %_ZL16useDynamicWindowP8SCSUDataa.exit361, %bb.ar, %bb.k
  %.9297.jt2 = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.ar ], [ %.lcssa555, %bb.bp ], [ %i.ao, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %i.ao, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.ao, %bb.ay ], [ %.lcssa555, %bb.br ], [ %.lcssa555, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %i.lm, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %i.bl, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa555, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.9.jt2 = phi ptr [ %.1280, %bb.k ], [ %.1280, %bb.ar ], [ %.6285517.lcssa537, %bb.bp ], [ %.1280, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %.1280, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1280, %bb.ay ], [ %.6285517.lcssa537, %bb.br ], [ %.6285517.lcssa537, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %.7286, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %.2281, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6285517.lcssa537, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.8.jt2 = phi i32 [ %.1273, %bb.k ], [ %.1273, %bb.ar ], [ %.6278518.lcssa540, %bb.bp ], [ %.1273, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %.1273, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1273, %bb.ay ], [ %.6278518.lcssa540, %bb.br ], [ %.6278518.lcssa540, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %.7, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %.2274, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6278518.lcssa540, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.2271.jt2 = phi i8 [ %.0269, %bb.k ], [ %.0269, %bb.ar ], [ 0, %bb.bp ], [ %.0269, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %.0269, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0269, %bb.ay ], [ 1, %bb.br ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %.0269, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ 0, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.2268.jt2 = phi i8 [ %.0266, %bb.k ], [ %.0266, %bb.ar ], [ %.0266, %bb.bp ], [ %2, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %.0266, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0266, %bb.ay ], [ %.0266, %bb.br ], [ %4, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %.06.i380.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %.06.i.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0266, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.1265.jt2 = phi i32 [ %.0264, %bb.k ], [ %.0264, %bb.ar ], [ %.0264, %bb.bp ], [ %i.go, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %.0264, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0264, %bb.ay ], [ %.0264, %bb.br ], [ %8, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %i.mu, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %i.cr, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0264, %_ZL9getWindowPKjj.exit365 ]
  %.6.jt2 = phi i32 [ %i.az, %bb.k ], [ %i.gi, %bb.ar ], [ %.lcssa549, %bb.bp ], [ %i.hc, %_ZL16useDynamicWindowP8SCSUDataa.exit361 ], [ %i.hh, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.hq, %bb.ay ], [ %i.kg, %bb.br ], [ %i.kk, %_ZL16useDynamicWindowP8SCSUDataa.exit377 ], [ %i.ns, %_ZL16useDynamicWindowP8SCSUDataa.exit393 ], [ %i.dp, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa549, %_ZL9getWindowPKjj.exit365 ] ; 2 uses
  %.not327.jt2 = icmp samesign ult i32 %.8.jt2, 2
  br i1 %.not327.jt2, label %.thread, label %bb.dg

bb.de:                                            ; preds = %bb.db
  %i.qm = lshr i32 %.6.jt4, 24
  %i.qn = trunc nuw i32 %i.qm to i8
  %i.qo = getelementptr inbounds nuw i8, ptr %.9.jt4, i64 1
  store i8 %i.qn, ptr %.9.jt4, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.dc, %bb.de
  %.0260662.neg = phi i32 [ -3, %bb.dc ], [ -4, %bb.de ]
  %.6659 = phi i32 [ %.6.jt3, %bb.dc ], [ %.6.jt4, %bb.de ] ; 2 uses
  %.1265656 = phi i32 [ %.1265.jt3, %bb.dc ], [ %.1265.jt4, %bb.de ]
  %.2268654 = phi i8 [ %.2268.jt3, %bb.dc ], [ %.2268.jt4, %bb.de ]
  %.2271651 = phi i8 [ %.2271.jt3, %bb.dc ], [ %.2271.jt4, %bb.de ]
  %.8648 = phi i32 [ %.8.jt3, %bb.dc ], [ %.8.jt4, %bb.de ]
  %.9297644 = phi ptr [ %.9297.jt3, %bb.dc ], [ %.9297.jt4, %bb.de ]
  %.10 = phi ptr [ %.9.jt3, %bb.dc ], [ %i.qo, %bb.de ] ; 2 uses
  %i.qp = lshr i32 %.6659, 16
  %i.qq = trunc i32 %i.qp to i8
  %i.qr = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.qq, ptr %.10, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dd, %bb.df
  %.0260663.neg = phi i32 [ -2, %bb.dd ], [ %.0260662.neg, %bb.df ]
  %.6660 = phi i32 [ %.6.jt2, %bb.dd ], [ %.6659, %bb.df ] ; 2 uses
  %.1265657 = phi i32 [ %.1265.jt2, %bb.dd ], [ %.1265656, %bb.df ]
  %.2268655 = phi i8 [ %.2268.jt2, %bb.dd ], [ %.2268654, %bb.df ]
  %.2271652 = phi i8 [ %.2271.jt2, %bb.dd ], [ %.2271651, %bb.df ]
  %.8649 = phi i32 [ %.8.jt2, %bb.dd ], [ %.8648, %bb.df ]
  %.9297645 = phi ptr [ %.9297.jt2, %bb.dd ], [ %.9297644, %bb.df ]
  %.11 = phi ptr [ %.9.jt2, %bb.dd ], [ %i.qr, %bb.df ] ; 3 uses
  %i.qs = lshr i32 %.6660, 8
  %i.qt = trunc i32 %i.qs to i8
  store i8 %i.qt, ptr %.11, align 1
  %i.qu = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.qv = trunc i32 %.6660 to i8
  store i8 %i.qv, ptr %i.qu, align 1
  %i.qw = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %i.qx = add i32 %.0260663.neg, %.8649
  br label %bb.b

.thread:                                          ; preds = %bb.dd, %bb.dc, %bb.db, %bb.bk, %bb.bm
  %.0260447 = phi i32 [ 2, %bb.bm ], [ 2, %bb.dd ], [ 3, %bb.dc ], [ 4, %bb.db ], [ 2, %bb.bk ]
  %.6446 = phi i32 [ %i.jk, %bb.bm ], [ %.6.jt2, %bb.dd ], [ %.6.jt3, %bb.dc ], [ %.6.jt4, %bb.db ], [ %i.ix, %bb.bk ] ; 5 uses
  %.2268445 = phi i8 [ %.0266, %bb.bm ], [ %.2268.jt2, %bb.dd ], [ %.2268.jt3, %bb.dc ], [ %.2268.jt4, %bb.db ], [ %.0266, %bb.bk ] ; 2 uses
  %.2271444 = phi i8 [ 0, %bb.bm ], [ %.2271.jt2, %bb.dd ], [ %.2271.jt3, %bb.dc ], [ %.2271.jt4, %bb.db ], [ 0, %bb.bk ] ; 2 uses
  %.8443 = phi i32 [ 1, %bb.bm ], [ 1, %bb.dd ], [ %.8.jt3, %bb.dc ], [ %.8.jt4, %bb.db ], [ 1, %bb.bk ] ; 3 uses
  %.9442 = phi ptr [ %.6285517807, %bb.bm ], [ %.9.jt2, %bb.dd ], [ %.9.jt3, %bb.dc ], [ %.9.jt4, %bb.db ], [ %.0279, %bb.bk ] ; 5 uses
  %.9297441 = phi ptr [ %i.ji, %bb.bm ], [ %.9297.jt2, %bb.dd ], [ %.9297.jt3, %bb.dc ], [ %.9297.jt4, %bb.db ], [ %i.iv, %bb.bk ] ; 2 uses
  %i.qy = sub nsw i32 %.0260447, %.8443           ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  switch i32 %i.qy, label %bb.dl [
    i32 4, label %bb.dh
    i32 3, label %bb.di
    i32 2, label %bb.dj
    i32 1, label %bb.dk
  ]

bb.dh:                                            ; preds = %.thread
  %i.ra = lshr i32 %.6446, 24
  %i.rb = trunc nuw i32 %i.ra to i8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  store i8 %i.rb, ptr %i.qz, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.thread
  %.0 = phi ptr [ %i.rc, %bb.dh ], [ %i.qz, %.thread ] ; 2 uses
  %i.rd = lshr i32 %.6446, 16
  %i.re = trunc i32 %i.rd to i8
  %i.rf = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.re, ptr %.0, align 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.thread
  %.1 = phi ptr [ %i.rf, %bb.di ], [ %i.qz, %.thread ] ; 2 uses
  %i.rg = lshr i32 %.6446, 8
  %i.rh = trunc i32 %i.rg to i8
  %i.ri = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.rh, ptr %.1, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.thread
  %.2 = phi ptr [ %i.ri, %bb.dj ], [ %i.qz, %.thread ]
  %i.rj = trunc i32 %.6446 to i8
  store i8 %i.rj, ptr %.2, align 1
  br label %bb.dl

bb.dl:                                            ; preds = %.thread, %bb.dk
  %i.rk = trunc nsw i32 %i.qy to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 %i.rk, ptr %i.rl, align 1
  %i.rm = icmp eq i32 %i.qy, 4
  %i.rn = shl nsw i32 %i.qy, 3
  %i.ro = lshr i32 %.6446, %i.rn
  %i.rp = select i1 %i.rm, i32 0, i32 %i.ro       ; 3 uses
  switch i32 %.8443, label %.unreachabledefault [
    i32 3, label %bb.dm
    i32 2, label %bb.dn
    i32 1, label %bb.do
    i32 0, label %.loopexit.sink.split
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.rq = lshr i32 %i.rp, 16
  %i.rr = trunc i32 %i.rq to i8
  %i.rs = getelementptr inbounds nuw i8, ptr %.9442, i64 1
  store i8 %i.rr, ptr %.9442, align 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.14 = phi ptr [ %i.rs, %bb.dm ], [ %.9442, %bb.dl ] ; 2 uses
  %i.rt = lshr i32 %i.rp, 8
  %i.ru = trunc i32 %i.rt to i8
  %i.rv = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 %i.ru, ptr %.14, align 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dl, %bb.dn
  %.15 = phi ptr [ %i.rv, %bb.dn ], [ %.9442, %bb.dl ] ; 2 uses
  %i.rw = trunc i32 %i.rp to i8
  %i.rx = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.rw, ptr %.15, align 1
  br label %.loopexit.sink.split

.unreachabledefault:                              ; preds = %bb.dl
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL27_SCSUFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 13 uses
  %i.y = zext i8 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 84 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = sext i1 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 75 ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.dv, %bb.a
  %.0380 = phi ptr [ %i.g, %bb.a ], [ %.9389804, %bb.dv ] ; 8 uses
  %.0360 = phi ptr [ %i.k, %bb.a ], [ %.16376, %bb.dv ] ; 10 uses
  %.0351 = phi i32 [ %i.q, %bb.a ], [ %i.se, %bb.dv ] ; 9 uses
  %.0342 = phi ptr [ %i.s, %bb.a ], [ %.19, %bb.dv ] ; 11 uses
  %.0339 = phi i8 [ %i.u, %bb.a ], [ %.2341818, %bb.dv ] ; 16 uses
  %.0336 = phi i8 [ %i.w, %bb.a ], [ %.2338823, %bb.dv ] ; 30 uses
  %.0334 = phi i32 [ %i.aa, %bb.a ], [ %.1335827, %bb.dv ] ; 15 uses
  %.0327 = phi i32 [ %i.ac, %bb.a ], [ 0, %bb.dv ] ; 6 uses
  %.0321 = phi i32 [ %i.ae, %bb.a ], [ %.8837, %bb.dv ] ; 7 uses
  %.0318 = phi i32 [ 0, %bb.a ], [ %.8837, %bb.dv ] ; 4 uses
  %.not = icmp eq i8 %.0339, 0
  %i.ao = icmp ne i32 %.0327, 0
  %i.ap = icmp sgt i32 %.0351, 0
  %or.cond5 = select i1 %i.ao, i1 %i.ap, i1 false ; 2 uses
  br i1 %.not, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond5, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bo
  %.1381 = phi ptr [ %.5385, %bb.bo ], [ %.0380, %bb.c ] ; 5 uses
  %.1361 = phi ptr [ %.5365, %bb.bo ], [ %.0360, %bb.c ] ; 22 uses
  %.1352 = phi i32 [ %.5356, %bb.bo ], [ %.0351, %bb.c ] ; 17 uses
  %.1343 = phi ptr [ %.10, %bb.bo ], [ %.0342, %bb.c ] ; 22 uses
  %.1328 = phi i32 [ 0, %bb.bo ], [ %.0327, %bb.c ] ; 2 uses
  %.1322 = phi i32 [ %.5, %bb.bo ], [ %.0321, %bb.c ] ; 13 uses
  %.1319 = phi i32 [ %.5, %bb.bo ], [ %.0318, %bb.c ]
  %i.aq = icmp ult ptr %.1381, %i.i
  br i1 %i.aq, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp slt i32 %.1352, 1
  br i1 %i.ar, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.1381, i64 2 ; 21 uses
  %i.at = load i16, ptr %.1381, align 2           ; 10 uses
  %i.au = zext i16 %i.at to i32                   ; 17 uses
  %i.av = add nsw i32 %.1319, 1                   ; 16 uses
  %i.aw = add i16 %i.at, -32
  %i.ax = icmp ult i16 %i.aw, 96
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ay = trunc nuw nsw i16 %i.at to i8
  store i8 %i.ay, ptr %.1361, align 1
  %.not428 = icmp eq ptr %.1343, null
  br i1 %.not428, label %bb.bo, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bo

bb.i:                                             ; preds = %bb.f
  %i.ba = icmp ult i16 %i.at, 32
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = zext nneg i16 %i.at to i64
  %i.bc = shl nuw nsw i64 1, %i.bb
  %i.bd = and i64 %i.bc, 9729
  %.not422 = icmp eq i64 %i.bd, 0
  br i1 %.not422, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i16 %i.at to i8
  store i8 %i.be, ptr %.1361, align 1
  %.not427 = icmp eq ptr %.1343, null
  br i1 %.not427, label %bb.bo, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bo

bb.m:                                             ; preds = %bb.j
  %i.bg = or disjoint i32 %i.au, 256
  br label %bb.do

bb.n:                                             ; preds = %bb.i
  %i.bh = sub i32 %i.au, %.0334                   ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 128
  br i1 %i.bi, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bj = trunc nuw nsw i32 %i.bh to i8
  %i.bk = or disjoint i8 %i.bj, -128
  store i8 %i.bk, ptr %.1361, align 1
  %.not421 = icmp eq ptr %.1343, null
  br i1 %.not421, label %bb.bo, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bo

bb.q:                                             ; preds = %bb.n
  %i.bm = and i32 %i.au, 63488
  %i.bn = icmp eq i32 %i.bm, 55296
  br i1 %i.bn, label %bb.r, label %bb.ay

bb.r:                                             ; preds = %bb.q
  %i.bo = and i32 %i.au, 1024
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.s, label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.r, %bb.c
  %.2382 = phi ptr [ %.0380, %bb.c ], [ %i.as, %bb.r ] ; 5 uses
  %.2362 = phi ptr [ %.0360, %bb.c ], [ %.1361, %bb.r ] ; 9 uses
  %.2353 = phi i32 [ %.0351, %bb.c ], [ %.1352, %bb.r ] ; 5 uses
  %.5347 = phi ptr [ %.0342, %bb.c ], [ %.1343, %bb.r ] ; 10 uses
  %.2329 = phi i32 [ %.0327, %bb.c ], [ %i.au, %bb.r ] ; 4 uses
  %.2323 = phi i32 [ %.0321, %bb.c ], [ %.1322, %bb.r ] ; 5 uses
  %.2320 = phi i32 [ %.0318, %bb.c ], [ %i.av, %bb.r ]
  %i.bq = icmp ult ptr %.2382, %i.i
  br i1 %i.bq, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.br = load i16, ptr %.2382, align 2
  %i.bs = zext i16 %i.br to i32                   ; 3 uses
  %i.bt = and i32 %i.bs, 64512
  %i.bu = icmp eq i32 %i.bt, 56320
  br i1 %i.bu, label %bb.u, label %.loopexit.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.2382, i64 2 ; 5 uses
  %i.bw = add nsw i32 %.2320, 1                   ; 5 uses
  %i.bx = shl i32 %.2329, 10
  %i.by = add nsw i32 %i.bx, %i.bs                ; 11 uses
  %i.bz = add nsw i32 %i.by, -56613888            ; 18 uses
  %i.ca = sub i32 %i.bz, %.0334                   ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 128
  br i1 %i.cb, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cc = trunc nuw nsw i32 %i.ca to i8
  %i.cd = or disjoint i8 %i.cc, -128
  store i8 %i.cd, ptr %.2362, align 1
  %.not414 = icmp eq ptr %.5347, null
  br i1 %.not414, label %bb.bo, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.5347, i64 4
  store i32 %.2323, ptr %.5347, align 4
  br label %bb.bo

bb.x:                                             ; preds = %bb.u
  %i.cf = load i32, ptr %i.x, align 4
  %i.cg = sub i32 %i.bz, %i.cf
  %i.ch = icmp ult i32 %i.cg, 128
  br i1 %i.ch, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load i32, ptr %i.af, align 4
  %i.cj = sub i32 %i.bz, %i.ci
  %i.ck = icmp ult i32 %i.cj, 128
  br i1 %i.ck, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = load i32, ptr %i.ag, align 4
  %i.cm = sub i32 %i.bz, %i.cl
  %i.cn = icmp ult i32 %i.cm, 128
  br i1 %i.cn, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load i32, ptr %i.ah, align 4
  %i.cp = sub i32 %i.bz, %i.co
  %i.cq = icmp ult i32 %i.cp, 128
  br i1 %i.cq, label %select.unfold, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = load i32, ptr %i.ai, align 4
  %i.cs = sub i32 %i.bz, %i.cr
  %i.ct = icmp ult i32 %i.cs, 128
  br i1 %i.ct, label %select.unfold, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %i.aj, align 4
  %i.cv = sub i32 %i.bz, %i.cu
  %i.cw = icmp ult i32 %i.cv, 128
  br i1 %i.cw, label %select.unfold, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load i32, ptr %i.ak, align 4
  %i.cy = sub i32 %i.bz, %i.cx
  %i.cz = icmp ult i32 %i.cy, 128
  br i1 %i.cz, label %select.unfold, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i32, ptr %i.al, align 4
  %i.db = sub i32 %i.bz, %i.da
  %i.dc = icmp ult i32 %i.db, 128
  br i1 %i.dc, label %select.unfold, label %_ZL9getWindowPKjj.exit

select.unfold:                                    ; preds = %bb.ae, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.06.i.ph = phi i8 [ 0, %bb.x ], [ 6, %bb.ad ], [ 5, %bb.ac ], [ 4, %bb.ab ], [ 3, %bb.aa ], [ 2, %bb.z ], [ 1, %bb.y ], [ 7, %bb.ae ] ; 5 uses
  %i.dd = zext nneg i8 %.06.i.ph to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = load i8, ptr %i.an, align 1
  %i.dh = sext i8 %i.dg to i32                    ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %select.unfold
  %.019.i = phi i32 [ %i.dh, %select.unfold ], [ %spec.store.select.i, %bb.af ] ; 2 uses
  %i.di = add nsw i32 %.019.i, -1
  %i.dj = icmp slt i32 %.019.i, 1
  %spec.store.select.i = select i1 %i.dj, i32 7, i32 %i.di ; 4 uses
  %i.dk = sext i32 %spec.store.select.i to i64    ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.am, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1
  %.not.i = icmp eq i8 %i.dm, %.06.i.ph
  br i1 %.not.i, label %bb.ag, label %bb.af, !llvm.loop !14

bb.ag:                                            ; preds = %bb.af
  %i.dn = add nsw i32 %spec.store.select.i, 1     ; 2 uses
  %i.do = icmp eq i32 %i.dn, 8
  %spec.store.select1.i = select i1 %i.do, i32 0, i32 %i.dn ; 2 uses
  %.not2021.i = icmp eq i32 %spec.store.select1.i, %i.dh
  br i1 %.not2021.i, label %_ZL16useDynamicWindowP8SCSUDataa.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.i
  %.023.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i ], [ %spec.store.select1.i, %bb.ag ] ; 3 uses
  %.122.i = phi i32 [ %.023.i, %.lr.ph.i ], [ %spec.store.select.i, %bb.ag ]
  %i.dp = sext i32 %.023.i to i64                 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.am, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = sext i32 %.122.i to i64
  %i.dt = getelementptr inbounds i8, ptr %i.am, i64 %i.ds
  store i8 %i.dr, ptr %i.dt, align 1
  %i.du = add nsw i32 %.023.i, 1                  ; 2 uses
  %i.dv = icmp eq i32 %i.du, 8
  %spec.store.select2.i = select i1 %i.dv, i32 0, i32 %i.du ; 2 uses
  %i.dw = load i8, ptr %i.an, align 1
  %i.dx = sext i8 %i.dw to i32
  %.not20.i = icmp eq i32 %spec.store.select2.i, %i.dx
  br i1 %.not20.i, label %_ZL16useDynamicWindowP8SCSUDataa.exit, label %.lr.ph.i, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit:            ; preds = %.lr.ph.i, %bb.ag
  %.pre-phi.i = phi i64 [ %i.dk, %bb.ag ], [ %i.dp, %.lr.ph.i ]
  %i.dy = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i
  store i8 %.06.i.ph, ptr %i.dy, align 1
  %narrow = or disjoint i8 %.06.i.ph, 16
  %i.dz = zext nneg i8 %narrow to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = sub i32 %i.bz, %i.df
  %i.ec = or i32 %i.eb, %i.ea
  %i.ed = or i32 %i.ec, 128
  br label %bb.do

_ZL9getWindowPKjj.exit:                           ; preds = %bb.ae
  %i.ee = add i32 %i.by, -56614080
  %i.ef = icmp ult i32 %i.ee, 128
  br i1 %i.ef, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %_ZL9getWindowPKjj.exit
  %.029.lcssa.wide.i = phi i32 [ 249, %_ZL9getWindowPKjj.exit ], [ 250, %bb.ai ], [ 251, %bb.aj ], [ 252, %bb.ak ], [ 253, %bb.al ], [ 254, %bb.am ], [ 255, %bb.an ]
  %.lcssa.i = phi i32 [ 192, %_ZL9getWindowPKjj.exit ], [ 592, %bb.ai ], [ 880, %bb.aj ], [ 1328, %bb.ak ], [ 12352, %bb.al ], [ 12448, %bb.am ], [ 65376, %bb.an ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 4
  br label %bb.at

bb.ai:                                            ; preds = %_ZL9getWindowPKjj.exit
  %i.eg = add i32 %i.by, -56614480
  %i.eh = icmp ult i32 %i.eg, 128
  br i1 %i.eh, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ei = add i32 %i.by, -56614768
  %i.ej = icmp ult i32 %i.ei, 128
  br i1 %i.ej, label %bb.ah, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = add i32 %i.by, -56615216
  %i.el = icmp ult i32 %i.ek, 128
  br i1 %i.el, label %bb.ah, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = add i32 %i.by, -56626240
  %i.en = icmp ult i32 %i.em, 128
  br i1 %i.en, label %bb.ah, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = add i32 %i.by, -56626336
  %i.ep = icmp ult i32 %i.eo, 128
  br i1 %i.ep, label %bb.ah, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = add i32 %i.by, -56679264
  %i.er = icmp ult i32 %i.eq, 128
  br i1 %i.er, label %bb.ah, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = icmp ult i32 %i.bz, 128
  br i1 %i.es, label %_ZL16getDynamicOffsetjPj.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = icmp ult i32 %i.bz, 13312
  %i.eu = and i32 %i.bz, -16384
  %i.ev = icmp eq i32 %i.eu, 65536
  %or.cond.i = or i1 %i.et, %i.ev
  %i.ew = add i32 %i.by, -56732672
  %i.ex = icmp ult i32 %i.ew, 12288
  %or.cond27.i = or i1 %i.ex, %or.cond.i
  br i1 %or.cond27.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ey = and i32 %i.bz, 130944                   ; 2 uses
  store i32 %i.ey, ptr %i.a, align 4
  %i.ez = lshr i32 %i.bz, 7
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.fa = icmp ne i32 %i.bz, 65279
  %i.fb = add i32 %i.by, -56671232
  %i.fc = icmp ult i32 %i.fb, 8176
  %or.cond3.i = and i1 %i.fa, %i.fc
  br i1 %or.cond3.i, label %bb.as, label %_ZL16getDynamicOffsetjPj.exit

bb.as:                                            ; preds = %bb.ar
  %i.fd = and i32 %i.bz, 65408                    ; 2 uses
  store i32 %i.fd, ptr %i.a, align 4
  %i.fe = add nsw i32 %i.by, -56657920
  %i.ff = lshr i32 %i.fe, 7
  br label %bb.at

bb.at:                                            ; preds = %bb.ah, %bb.aq, %bb.as
  %i.fg = phi i32 [ %i.fd, %bb.as ], [ %i.ey, %bb.aq ], [ %.lcssa.i, %bb.ah ] ; 3 uses
  %.023.i433.ph = phi i32 [ %i.ff, %bb.as ], [ %i.ez, %bb.aq ], [ %.029.lcssa.wide.i, %bb.ah ]
  %i.fh = load i8, ptr %i.an, align 1             ; 2 uses
  %i.fi = sext i8 %i.fh to i64
  %i.fj = getelementptr inbounds i8, ptr %i.am, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1             ; 5 uses
  %i.fl = add i8 %i.fh, 1                         ; 2 uses
  %i.fm = icmp eq i8 %i.fl, 8
  %spec.select.i434 = select i1 %i.fm, i8 0, i8 %i.fl
  store i8 %spec.select.i434, ptr %i.an, align 1
  %i.fn = zext i8 %i.fk to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.fn
  store i32 %i.fg, ptr %i.fo, align 4
  %i.fp = load i8, ptr %i.an, align 1
  %i.fq = sext i8 %i.fp to i32                    ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.019.i435 = phi i32 [ %i.fq, %bb.at ], [ %spec.store.select.i436, %bb.au ] ; 2 uses
  %i.fr = add nsw i32 %.019.i435, -1
  %i.fs = icmp slt i32 %.019.i435, 1
  %spec.store.select.i436 = select i1 %i.fs, i32 7, i32 %i.fr ; 4 uses
  %i.ft = sext i32 %spec.store.select.i436 to i64 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.am, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %.not.i437 = icmp eq i8 %i.fv, %i.fk
  br i1 %.not.i437, label %bb.av, label %bb.au, !llvm.loop !14

bb.av:                                            ; preds = %bb.au
  %i.fw = add nsw i32 %spec.store.select.i436, 1  ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 8
  %spec.store.select1.i438 = select i1 %i.fx, i32 0, i32 %i.fw ; 2 uses
  %.not2021.i439 = icmp eq i32 %spec.store.select1.i438, %i.fq
  br i1 %.not2021.i439, label %_ZL16useDynamicWindowP8SCSUDataa.exit446, label %.lr.ph.i440

.lr.ph.i440:                                      ; preds = %bb.av, %.lr.ph.i440
  %.023.i441 = phi i32 [ %spec.store.select2.i443, %.lr.ph.i440 ], [ %spec.store.select1.i438, %bb.av ] ; 3 uses
  %.122.i442 = phi i32 [ %.023.i441, %.lr.ph.i440 ], [ %spec.store.select.i436, %bb.av ]
  %i.fy = sext i32 %.023.i441 to i64              ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.am, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = sext i32 %.122.i442 to i64
  %i.gc = getelementptr inbounds i8, ptr %i.am, i64 %i.gb
  store i8 %i.ga, ptr %i.gc, align 1
  %i.gd = add nsw i32 %.023.i441, 1               ; 2 uses
  %i.ge = icmp eq i32 %i.gd, 8
  %spec.store.select2.i443 = select i1 %i.ge, i32 0, i32 %i.gd ; 2 uses
  %i.gf = load i8, ptr %i.an, align 1
  %i.gg = sext i8 %i.gf to i32
  %.not20.i444 = icmp eq i32 %spec.store.select2.i443, %i.gg
  br i1 %.not20.i444, label %_ZL16useDynamicWindowP8SCSUDataa.exit446, label %.lr.ph.i440, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit446:         ; preds = %.lr.ph.i440, %bb.av
  %.pre-phi.i445 = phi i64 [ %i.ft, %bb.av ], [ %i.fy, %.lr.ph.i440 ]
  %i.gh = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i445
  store i8 %i.fk, ptr %i.gh, align 1
  %i.gi = zext i8 %i.fk to i32
  %i.gj = shl nuw nsw i32 %i.gi, 21
  %i.gk = shl nuw nsw i32 %.023.i433.ph, 8
  %i.gl = add nsw i32 %i.gk, -131072
  %i.gm = sub i32 %i.bz, %i.fg
  %i.gn = or i32 %i.gl, %i.gj
  %i.go = or i32 %i.gn, %i.gm
  %i.gp = or i32 %i.go, 184549504
  br label %bb.dm

_ZL16getDynamicOffsetjPj.exit:                    ; preds = %bb.ar, %bb.ao
  %i.gq = getelementptr inbounds nuw i8, ptr %.2362, i64 1
  store i8 15, ptr %.2362, align 1
  %.not413 = icmp eq ptr %.5347, null
  br i1 %.not413, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %.5347, i64 4
  store i32 %.2323, ptr %.5347, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL16getDynamicOffsetjPj.exit
  %.7349 = phi ptr [ %i.gr, %bb.aw ], [ null, %_ZL16getDynamicOffsetjPj.exit ]
  %i.gs = add nsw i32 %.2353, -1
  %i.gt = shl i32 %.2329, 16
  %i.gu = or disjoint i32 %i.gt, %i.bs
  br label %bb.dm

bb.ay:                                            ; preds = %bb.q
  %i.gv = icmp ult i16 %i.at, 160
  br i1 %i.gv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gw = and i32 %i.au, 127
  %i.gx = or disjoint i32 %i.gw, 512
  br label %bb.do

bb.ba:                                            ; preds = %bb.ay
  %i.gy = icmp eq i16 %i.at, -257
  %i.gz = icmp ugt i16 %i.at, -17
  %or.cond3 = or i1 %i.gy, %i.gz
  br i1 %or.cond3, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ha = or disjoint i32 %i.au, 917504
  br label %bb.dn

bb.bc:                                            ; preds = %bb.ba
  %2 = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.x, i32 noundef %i.au) ; 6 uses
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %select.unfold519, label %_ZL9getWindowPKjj.exit449

select.unfold519:                                 ; preds = %bb.bc
  %.not417 = icmp ult ptr %i.as, %i.i
  %i.hb = zext nneg i8 %2 to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4            ; 5 uses
  br i1 %.not417, label %bb.bd, label %_ZL16useDynamicWindowP8SCSUDataa.exit462

bb.bd:                                            ; preds = %select.unfold519
  %i.he = load i16, ptr %i.as, align 2            ; 4 uses
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = add i32 %i.hd, 127
  %.not.i450 = icmp ult i32 %i.hg, %i.hf
  br i1 %.not.i450, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not7.i = icmp ugt i32 %i.hd, %i.hf
  br i1 %.not7.i, label %bb.bf, label %_ZL16useDynamicWindowP8SCSUDataa.exit462

bb.bf:                                            ; preds = %bb.be
  %i.hh = icmp ult i16 %i.he, 128
  br i1 %i.hh, label %_ZL24isInOffsetWindowOrDirectjj.exit, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread

_ZL24isInOffsetWindowOrDirectjj.exit:             ; preds = %bb.bf
  %i.hi = icmp samesign ult i16 %i.he, 32
  %i.hj = zext nneg i16 %i.he to i64
  %i.hk = shl nuw i64 1, %i.hj
  %i.hl = and i64 %i.hk, 9729
  %i.hm = icmp eq i64 %i.hl, 0
  %.not574 = select i1 %i.hi, i1 %i.hm, i1 false
  br i1 %.not574, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %_ZL16useDynamicWindowP8SCSUDataa.exit462

_ZL16useDynamicWindowP8SCSUDataa.exit462:         ; preds = %select.unfold519, %bb.be, %_ZL24isInOffsetWindowOrDirectjj.exit
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %2)
  %narrow420 = add nuw nsw i8 %2, 16
  %i.hn = zext nneg i8 %narrow420 to i32
  %i.ho = shl nuw nsw i32 %i.hn, 8
  %i.hp = sub i32 %i.au, %i.hd
  %i.hq = or i32 %i.ho, %i.hp
  %i.hr = or i32 %i.hq, 128
  br label %bb.do

_ZL24isInOffsetWindowOrDirectjj.exit.thread:      ; preds = %bb.bf, %bb.bd, %_ZL24isInOffsetWindowOrDirectjj.exit
  %narrow419 = add nuw nsw i8 %2, 1
  %i.hs = zext nneg i8 %narrow419 to i32
  %i.ht = shl nuw nsw i32 %i.hs, 8
  %i.hu = sub i32 %i.au, %i.hd
  %i.hv = or i32 %i.ht, %i.hu
  %i.hw = or i32 %i.hv, 128
  br label %bb.do

_ZL9getWindowPKjj.exit449:                        ; preds = %bb.bc
  %i.hx = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull @_ZL13staticOffsets, i32 noundef %i.au) ; 3 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZL9getWindowPKjj.exit449
  %narrow416 = add nuw nsw i8 %i.hx, 1
  %i.hz = zext nneg i8 %narrow416 to i32
  %i.ia = shl nuw nsw i32 %i.hz, 8
  %i.ib = zext nneg i8 %i.hx to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr @_ZL13staticOffsets, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = sub i32 %i.au, %i.id
  %i.if = or i32 %i.ie, %i.ia
  br label %bb.do

bb.bh:                                            ; preds = %_ZL9getWindowPKjj.exit449
  %i.ig = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %i.au, ptr noundef %i.a) ; 2 uses
  %i.ih = icmp sgt i32 %i.ig, -1
  br i1 %i.ih, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ii = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ij = sext i8 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.am, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1             ; 4 uses
  %i.im = add i8 %i.ii, 1                         ; 2 uses
  %i.in = icmp eq i8 %i.im, 8
  %spec.select.i463 = select i1 %i.in, i8 0, i8 %i.im
  store i8 %spec.select.i463, ptr %i.an, align 1
  %i.io = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ip = zext i8 %i.il to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ip
  store i32 %i.io, ptr %i.iq, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.il)
  %i.ir = zext i8 %i.il to i32
  %i.is = shl nuw nsw i32 %i.ir, 16
  %i.it = add nuw nsw i32 %i.is, 1572864
  %i.iu = shl nuw nsw i32 %i.ig, 8
  %i.iv = sub i32 %i.au, %i.io
  %i.iw = or i32 %i.iu, %i.it
  %i.ix = or i32 %i.iw, %i.iv
  %i.iy = or i32 %i.ix, 128
  br label %bb.dn

bb.bj:                                            ; preds = %bb.bh
  %i.iz = add i16 %i.at, -13312
  %i.ja = icmp ult i16 %i.iz, -23552
  br i1 %i.ja, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.not415 = icmp ult ptr %i.as, %i.i
  br i1 %.not415, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jb = load i16, ptr %i.as, align 2
  %i.jc = add i16 %i.jb, -13312
  %i.jd = icmp ult i16 %i.jc, -23552
  br i1 %i.jd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.je = or disjoint i32 %i.au, 983040
  br label %bb.dn

bb.bn:                                            ; preds = %bb.bl, %bb.bj
  %i.jf = or disjoint i32 %i.au, 917504
  br label %bb.dn

bb.bo:                                            ; preds = %bb.l, %bb.k, %bb.v, %bb.w, %bb.o, %bb.p, %bb.g, %bb.h
  %.5385 = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.as, %bb.o ], [ %i.as, %bb.p ], [ %i.bv, %bb.w ], [ %i.bv, %bb.v ]
  %.2362.pn.pn.pn = phi ptr [ %.1361, %bb.g ], [ %.1361, %bb.h ], [ %.1361, %bb.k ], [ %.1361, %bb.l ], [ %.1361, %bb.o ], [ %.1361, %bb.p ], [ %.2362, %bb.w ], [ %.2362, %bb.v ]
  %.5356.in = phi i32 [ %.1352, %bb.g ], [ %.1352, %bb.h ], [ %.1352, %bb.k ], [ %.1352, %bb.l ], [ %.1352, %bb.o ], [ %.1352, %bb.p ], [ %.2353, %bb.w ], [ %.2353, %bb.v ]
  %.10 = phi ptr [ null, %bb.g ], [ %i.az, %bb.h ], [ null, %bb.k ], [ %i.bf, %bb.l ], [ null, %bb.o ], [ %i.bl, %bb.p ], [ %i.ce, %bb.w ], [ null, %bb.v ]
  %.5 = phi i32 [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.o ], [ %i.av, %bb.p ], [ %i.bw, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  %.5365 = getelementptr inbounds nuw i8, ptr %.2362.pn.pn.pn, i64 1
  %.5356 = add nsw i32 %.5356.in, -1
  br label %bb.d, !llvm.loop !19

bb.bp:                                            ; preds = %bb.b
  br i1 %or.cond5, label %bb.cg, label %.preheader

.preheader:                                       ; preds = %bb.bp
  %i.jg = icmp ult ptr %.0380, %i.i
  br i1 %i.jg, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.jh = icmp slt i32 %.0351, 1
  br i1 %i.jh, label %.loopexit.sink.split, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.preheader
  %i.ji = getelementptr inbounds nuw i8, ptr %.0380, i64 2 ; 6 uses
  %i.jj = load i16, ptr %.0380, align 2           ; 4 uses
  %i.jk = zext i16 %i.jj to i32                   ; 3 uses
  %i.jl = add nsw i32 %.0318, 1                   ; 2 uses
  %i.jm = add nsw i32 %i.jk, -13312               ; 2 uses
  %i.jn = icmp ult i32 %i.jm, 41984
  br i1 %i.jn, label %bb.br, label %.loopexit751

bb.br:                                            ; preds = %bb.bq
  %.not411.peel = icmp eq i32 %.0351, 1
  br i1 %.not411.peel, label %.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jo = lshr i16 %i.jj, 8
  %i.jp = trunc nuw i16 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.0360, i64 1
  store i8 %i.jp, ptr %.0360, align 1
  %i.jr = trunc i16 %i.jj to i8
  %i.js = getelementptr inbounds nuw i8, ptr %.0360, i64 2 ; 3 uses
  store i8 %i.jr, ptr %i.jq, align 1
  %.not412.peel = icmp eq ptr %.0342, null
  br i1 %.not412.peel, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jt = getelementptr inbounds nuw i8, ptr %.0342, i64 4
  store i32 %.0321, ptr %.0342, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.0342, i64 8
  store i32 %.0321, ptr %i.jt, align 4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.12.peel = phi ptr [ %i.ju, %bb.bt ], [ null, %bb.bs ] ; 3 uses
  %i.jv = icmp ult ptr %i.ji, %i.i
  br i1 %i.jv, label %.lr.ph.preheader1023, label %.loopexit

.lr.ph.preheader1023:                             ; preds = %bb.bu
  %i.jw = icmp slt i32 %.0351, 3
  br i1 %i.jw, label %.loopexit.sink.split, label %.lr.ph1085

.lr.ph:                                           ; preds = %bb.by
  %i.jx = icmp slt i32 %.63576531084.in, 5
  br i1 %i.jx, label %.loopexit.sink.split, label %.lr.ph1085, !llvm.loop !20

.lr.ph1085:                                       ; preds = %.lr.ph.preheader1023, %.lr.ph
  %.63576531084.in = phi i32 [ %.63576531084, %.lr.ph ], [ %.0351, %.lr.ph.preheader1023 ] ; 2 uses
  %.63866511083 = phi ptr [ %i.jy, %.lr.ph ], [ %i.ji, %.lr.ph.preheader1023 ] ; 2 uses
  %.63666521082 = phi ptr [ %i.ki, %.lr.ph ], [ %i.js, %.lr.ph.preheader1023 ] ; 5 uses
  %.116541081 = phi ptr [ %.12, %.lr.ph ], [ %.12.peel, %.lr.ph.preheader1023 ] ; 6 uses
  %.66571080 = phi i32 [ %i.kb, %.lr.ph ], [ %i.jl, %.lr.ph.preheader1023 ] ; 5 uses
  %.63576531084 = add nsw i32 %.63576531084.in, -2 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.63866511083, i64 2 ; 6 uses
  %i.jz = load i16, ptr %.63866511083, align 2    ; 4 uses
  %i.ka = zext i16 %i.jz to i32                   ; 3 uses
  %i.kb = add nsw i32 %.66571080, 1               ; 2 uses
  %i.kc = add nsw i32 %i.ka, -13312               ; 2 uses
  %i.kd = icmp ult i32 %i.kc, 41984
  br i1 %i.kd, label %bb.bv, label %.loopexit751

bb.bv:                                            ; preds = %.lr.ph1085
  %.not411 = icmp eq i32 %.63576531084, 1
  br i1 %.not411, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ke = lshr i16 %i.jz, 8
  %i.kf = trunc nuw i16 %i.ke to i8
  %i.kg = getelementptr inbounds nuw i8, ptr %.63666521082, i64 1
  store i8 %i.kf, ptr %.63666521082, align 1
  %i.kh = trunc i16 %i.jz to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %.63666521082, i64 2 ; 3 uses
  store i8 %i.kh, ptr %i.kg, align 1
  %.not412 = icmp eq ptr %.116541081, null
  br i1 %.not412, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kj = getelementptr inbounds nuw i8, ptr %.116541081, i64 4
  store i32 %.66571080, ptr %.116541081, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.116541081, i64 8
  store i32 %.66571080, ptr %i.kj, align 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.12 = phi ptr [ %i.kk, %bb.bx ], [ null, %bb.bw ] ; 3 uses
  %i.kl = icmp ult ptr %i.jy, %i.i
  br i1 %i.kl, label %.lr.ph, label %.loopexit, !llvm.loop !20

.loopexit751:                                     ; preds = %.lr.ph1085, %bb.bq
  %.lcssa704 = phi ptr [ %i.ji, %bb.bq ], [ %i.jy, %.lr.ph1085 ] ; 10 uses
  %.lcssa701 = phi i16 [ %i.jj, %bb.bq ], [ %i.jz, %.lr.ph1085 ] ; 3 uses
  %.lcssa698 = phi i32 [ %i.jk, %bb.bq ], [ %i.ka, %.lr.ph1085 ] ; 11 uses
  %.lcssa695 = phi i32 [ %i.jl, %bb.bq ], [ %i.kb, %.lr.ph1085 ] ; 7 uses
  %.lcssa692 = phi i32 [ %i.jm, %bb.bq ], [ %i.kc, %.lr.ph1085 ]
  %.3324656.lcssa689 = phi i32 [ %.0321, %bb.bq ], [ %.66571080, %.lr.ph1085 ] ; 7 uses
  %.11654.lcssa683 = phi ptr [ %.0342, %bb.bq ], [ %.116541081, %.lr.ph1085 ] ; 8 uses
  %.6357653.lcssa680 = phi i32 [ %.0351, %bb.bq ], [ %.63576531084, %.lr.ph1085 ] ; 7 uses
  %.6366652.lcssa677 = phi ptr [ %.0360, %bb.bq ], [ %.63666521082, %.lr.ph1085 ] ; 8 uses
  %i.km = icmp ugt i32 %.lcssa692, 48895
  br i1 %i.km, label %bb.bz, label %bb.ce

bb.bz:                                            ; preds = %.loopexit751
  %i.kn = icmp ult ptr %.lcssa704, %i.i
  br i1 %i.kn, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ko = load i16, ptr %.lcssa704, align 2
  %i.kp = add i16 %i.ko, -13312
  %i.kq = icmp ult i16 %i.kp, -23552
  br i1 %i.kq, label %bb.do, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.kr = add i16 %.lcssa701, -48
  %i.ks = icmp ult i16 %i.kr, 10
  %i.kt = and i16 %.lcssa701, -33
  %i.ku = add i16 %i.kt, -65
  %i.kv = icmp ult i16 %i.ku, 26
  %or.cond432 = or i1 %i.ks, %i.kv
  br i1 %or.cond432, label %bb.cc, label %.lr.ph.i472

bb.cc:                                            ; preds = %bb.cb
  %i.kw = zext i8 %.0336 to i32
  %i.kx = shl nuw nsw i32 %i.kw, 8
  %i.ky = add nuw nsw i32 %i.kx, 57344
  %i.kz = or i32 %i.ky, %.lcssa698
  br label %bb.do

.lr.ph.i472:                                      ; preds = %bb.cb
  %4 = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.x, i32 noundef %.lcssa698) ; 5 uses
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %_ZL16useDynamicWindowP8SCSUDataa.exit478, label %_ZL9getWindowPKjj.exit466

_ZL16useDynamicWindowP8SCSUDataa.exit478:         ; preds = %.lr.ph.i472
  %6 = zext nneg i8 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %6
  %8 = load i32, ptr %7, align 4                  ; 2 uses
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %4)
  %i.la = zext nneg i8 %4 to i32
  %i.lb = shl nuw nsw i32 %i.la, 8
  %i.lc = sub i32 %.lcssa698, %8
  %9 = add nuw nsw i32 %i.lb, 57472
  %i.ld = or i32 %9, %i.lc
  br label %bb.do

_ZL9getWindowPKjj.exit466:                        ; preds = %.lr.ph.i472
  %i.le = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %.lcssa698, ptr noundef %i.a) ; 2 uses
  %i.lf = icmp sgt i32 %i.le, -1
  br i1 %i.lf, label %bb.cd, label %bb.do

bb.cd:                                            ; preds = %_ZL9getWindowPKjj.exit466
  %i.lg = load i8, ptr %i.an, align 1             ; 2 uses
  %i.lh = sext i8 %i.lg to i64
  %i.li = getelementptr inbounds i8, ptr %i.am, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1             ; 4 uses
  %i.lk = add i8 %i.lg, 1                         ; 2 uses
  %i.ll = icmp eq i8 %i.lk, 8
  %spec.select.i479 = select i1 %i.ll, i8 0, i8 %i.lk
  store i8 %spec.select.i479, ptr %i.an, align 1
  %i.lm = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ln = zext i8 %i.lj to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ln
  store i32 %i.lm, ptr %i.lo, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.lj)
  %i.lp = zext i8 %i.lj to i32
  %i.lq = shl nuw nsw i32 %i.lp, 16
  %i.lr = add nuw nsw i32 %i.lq, 15204352
  %i.ls = shl nuw nsw i32 %i.le, 8
  %i.lt = sub i32 %.lcssa698, %i.lm
  %i.lu = or i32 %i.ls, %i.lr
  %i.lv = or i32 %i.lu, %i.lt
  %i.lw = or i32 %i.lv, 128
  br label %bb.dn

bb.ce:                                            ; preds = %.loopexit751
  %i.lx = icmp ult i16 %.lcssa701, -8192
  br i1 %i.lx, label %bb.cf, label %bb.dl

bb.cf:                                            ; preds = %bb.ce
  %i.ly = and i32 %.lcssa698, 1024
  %i.lz = icmp eq i32 %i.ly, 0
  br i1 %i.lz, label %bb.cg, label %.loopexit.sink.split

bb.cg:                                            ; preds = %bb.cf, %bb.bp
  %.7387 = phi ptr [ %.0380, %bb.bp ], [ %.lcssa704, %bb.cf ] ; 5 uses
  %.7367 = phi ptr [ %.0360, %bb.bp ], [ %.6366652.lcssa677, %bb.cf ] ; 5 uses
  %.7358 = phi i32 [ %.0351, %bb.bp ], [ %.6357653.lcssa680, %bb.cf ] ; 3 uses
  %.13 = phi ptr [ %.0342, %bb.bp ], [ %.11654.lcssa683, %bb.cf ] ; 5 uses
  %.4331 = phi i32 [ %.0327, %bb.bp ], [ %.lcssa698, %bb.cf ] ; 5 uses
  %.4325 = phi i32 [ %.0321, %bb.bp ], [ %.3324656.lcssa689, %bb.cf ] ; 3 uses
  %.7 = phi i32 [ %.0318, %bb.bp ], [ %.lcssa695, %bb.cf ]
  %i.ma = icmp ult ptr %.7387, %i.i
  br i1 %i.ma, label %bb.ch, label %.loopexit

bb.ch:                                            ; preds = %bb.cg
  %i.mb = load i16, ptr %.7387, align 2
  %i.mc = zext i16 %i.mb to i32                   ; 3 uses
  %i.md = and i32 %i.mc, 64512
  %i.me = icmp eq i32 %i.md, 56320
  br i1 %i.me, label %bb.ci, label %.loopexit.sink.split

bb.ci:                                            ; preds = %bb.ch
  %i.mf = getelementptr inbounds nuw i8, ptr %.7387, i64 2 ; 7 uses
  %i.mg = add nsw i32 %.7, 1                      ; 3 uses
  %i.mh = shl i32 %.4331, 10
  %i.mi = add nsw i32 %i.mh, %i.mc                ; 11 uses
  %i.mj = add nsw i32 %i.mi, -56613888            ; 17 uses
  %i.mk = load i32, ptr %i.x, align 4
  %i.ml = sub i32 %i.mj, %i.mk
  %i.mm = icmp ult i32 %i.ml, 128
  br i1 %i.mm, label %select.unfold528, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mn = load i32, ptr %i.af, align 4
  %i.mo = sub i32 %i.mj, %i.mn
  %i.mp = icmp ult i32 %i.mo, 128
  br i1 %i.mp, label %select.unfold528, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mq = load i32, ptr %i.ag, align 4
  %i.mr = sub i32 %i.mj, %i.mq
  %i.ms = icmp ult i32 %i.mr, 128
  br i1 %i.ms, label %select.unfold528, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mt = load i32, ptr %i.ah, align 4
  %i.mu = sub i32 %i.mj, %i.mt
  %i.mv = icmp ult i32 %i.mu, 128
  br i1 %i.mv, label %select.unfold528, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mw = load i32, ptr %i.ai, align 4
  %i.mx = sub i32 %i.mj, %i.mw
  %i.my = icmp ult i32 %i.mx, 128
  br i1 %i.my, label %select.unfold528, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mz = load i32, ptr %i.aj, align 4
  %i.na = sub i32 %i.mj, %i.mz
  %i.nb = icmp ult i32 %i.na, 128
  br i1 %i.nb, label %select.unfold528, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nc = load i32, ptr %i.ak, align 4
  %i.nd = sub i32 %i.mj, %i.nc
  %i.ne = icmp ult i32 %i.nd, 128
  br i1 %i.ne, label %select.unfold528, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nf = load i32, ptr %i.al, align 4
  %i.ng = sub i32 %i.mj, %i.nf
  %i.nh = icmp ult i32 %i.ng, 128
  br i1 %i.nh, label %select.unfold528, label %_ZL9getWindowPKjj.exit482

select.unfold528:                                 ; preds = %bb.cp, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co
  %.06.i481.ph = phi i8 [ 0, %bb.ci ], [ 6, %bb.co ], [ 5, %bb.cn ], [ 4, %bb.cm ], [ 3, %bb.cl ], [ 2, %bb.ck ], [ 1, %bb.cj ], [ 7, %bb.cp ] ; 5 uses
  %i.ni = icmp ult ptr %i.mf, %i.i
  br i1 %i.ni, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %select.unfold528
  %i.nj = load i16, ptr %i.mf, align 2
  %i.nk = add i16 %i.nj, -13312
  %i.nl = icmp ult i16 %i.nk, -23552
  br i1 %i.nl, label %_ZL9getWindowPKjj.exit482, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %select.unfold528
  %i.nm = zext nneg i8 %.06.i481.ph to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4            ; 2 uses
  %i.np = load i8, ptr %i.an, align 1
  %i.nq = sext i8 %i.np to i32                    ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %.019.i483 = phi i32 [ %i.nq, %bb.cr ], [ %spec.store.select.i484, %bb.cs ] ; 2 uses
  %i.nr = add nsw i32 %.019.i483, -1
  %i.ns = icmp slt i32 %.019.i483, 1
  %spec.store.select.i484 = select i1 %i.ns, i32 7, i32 %i.nr ; 4 uses
  %i.nt = sext i32 %spec.store.select.i484 to i64 ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.am, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1
  %.not.i485 = icmp eq i8 %i.nv, %.06.i481.ph
  br i1 %.not.i485, label %bb.ct, label %bb.cs, !llvm.loop !14

bb.ct:                                            ; preds = %bb.cs
  %i.nw = add nsw i32 %spec.store.select.i484, 1  ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 8
  %spec.store.select1.i486 = select i1 %i.nx, i32 0, i32 %i.nw ; 2 uses
  %.not2021.i487 = icmp eq i32 %spec.store.select1.i486, %i.nq
  br i1 %.not2021.i487, label %_ZL16useDynamicWindowP8SCSUDataa.exit494, label %.lr.ph.i488

.lr.ph.i488:                                      ; preds = %bb.ct, %.lr.ph.i488
  %.023.i489 = phi i32 [ %spec.store.select2.i491, %.lr.ph.i488 ], [ %spec.store.select1.i486, %bb.ct ] ; 3 uses
  %.122.i490 = phi i32 [ %.023.i489, %.lr.ph.i488 ], [ %spec.store.select.i484, %bb.ct ]
  %i.ny = sext i32 %.023.i489 to i64              ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.am, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = sext i32 %.122.i490 to i64
  %i.oc = getelementptr inbounds i8, ptr %i.am, i64 %i.ob
  store i8 %i.oa, ptr %i.oc, align 1
  %i.od = add nsw i32 %.023.i489, 1               ; 2 uses
  %i.oe = icmp eq i32 %i.od, 8
  %spec.store.select2.i491 = select i1 %i.oe, i32 0, i32 %i.od ; 2 uses
  %i.of = load i8, ptr %i.an, align 1
  %i.og = sext i8 %i.of to i32
  %.not20.i492 = icmp eq i32 %spec.store.select2.i491, %i.og
  br i1 %.not20.i492, label %_ZL16useDynamicWindowP8SCSUDataa.exit494, label %.lr.ph.i488, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit494:         ; preds = %.lr.ph.i488, %bb.ct
  %.pre-phi.i493 = phi i64 [ %i.nt, %bb.ct ], [ %i.ny, %.lr.ph.i488 ]
  %i.oh = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i493
  store i8 %.06.i481.ph, ptr %i.oh, align 1
  %i.oi = zext nneg i8 %.06.i481.ph to i32
  %i.oj = shl nuw nsw i32 %i.oi, 8
  %i.ok = sub i32 %i.mj, %i.no
  %i.ol = or i32 %i.oj, %i.ok
  %i.om = or i32 %i.ol, 57472
  br label %bb.do

_ZL9getWindowPKjj.exit482:                        ; preds = %bb.cp, %bb.cq
  %i.on = icmp ult ptr %i.mf, %i.i
  br i1 %i.on, label %bb.cu, label %_ZL16getDynamicOffsetjPj.exit501

bb.cu:                                            ; preds = %_ZL9getWindowPKjj.exit482
  %i.oo = load i16, ptr %i.mf, align 2
  %i.op = trunc i32 %.4331 to i16
  %i.oq = icmp eq i16 %i.oo, %i.op
  br i1 %i.oq, label %bb.cv, label %_ZL16getDynamicOffsetjPj.exit501

bb.cv:                                            ; preds = %bb.cu
  %i.or = add i32 %i.mi, -56614080
  %i.os = icmp ult i32 %i.or, 128
  br i1 %i.os, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.029.lcssa.wide.i499 = phi i32 [ 249, %bb.cv ], [ 250, %bb.cx ], [ 251, %bb.cy ], [ 252, %bb.cz ], [ 253, %bb.da ], [ 254, %bb.db ], [ 255, %bb.dc ]
  %.lcssa.i500 = phi i32 [ 192, %bb.cv ], [ 592, %bb.cx ], [ 880, %bb.cy ], [ 1328, %bb.cz ], [ 12352, %bb.da ], [ 12448, %bb.db ], [ 65376, %bb.dc ] ; 2 uses
  store i32 %.lcssa.i500, ptr %i.a, align 4
  br label %bb.di

bb.cx:                                            ; preds = %bb.cv
  %i.ot = add i32 %i.mi, -56614480
  %i.ou = icmp ult i32 %i.ot, 128
  br i1 %i.ou, label %bb.cw, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ov = add i32 %i.mi, -56614768
  %i.ow = icmp ult i32 %i.ov, 128
  br i1 %i.ow, label %bb.cw, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ox = add i32 %i.mi, -56615216
  %i.oy = icmp ult i32 %i.ox, 128
  br i1 %i.oy, label %bb.cw, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oz = add i32 %i.mi, -56626240
  %i.pa = icmp ult i32 %i.oz, 128
  br i1 %i.pa, label %bb.cw, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pb = add i32 %i.mi, -56626336
  %i.pc = icmp ult i32 %i.pb, 128
  br i1 %i.pc, label %bb.cw, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pd = add i32 %i.mi, -56679264
  %i.pe = icmp ult i32 %i.pd, 128
  br i1 %i.pe, label %bb.cw, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pf = icmp ult i32 %i.mj, 128
  br i1 %i.pf, label %_ZL16getDynamicOffsetjPj.exit501, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pg = icmp ult i32 %i.mj, 13312
  %i.ph = and i32 %i.mj, -16384
  %i.pi = icmp eq i32 %i.ph, 65536
  %or.cond.i495 = or i1 %i.pg, %i.pi
  %i.pj = add i32 %i.mi, -56732672
  %i.pk = icmp ult i32 %i.pj, 12288
  %or.cond27.i496 = or i1 %i.pk, %or.cond.i495
  br i1 %or.cond27.i496, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pl = and i32 %i.mj, 130944                   ; 2 uses
  store i32 %i.pl, ptr %i.a, align 4
  %i.pm = lshr i32 %i.mj, 7
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.pn = icmp ne i32 %i.mj, 65279
  %i.po = add i32 %i.mi, -56671232
  %i.pp = icmp ult i32 %i.po, 8176
  %or.cond3.i497 = and i1 %i.pn, %i.pp
  br i1 %or.cond3.i497, label %bb.dh, label %_ZL16getDynamicOffsetjPj.exit501

bb.dh:                                            ; preds = %bb.dg
  %i.pq = and i32 %i.mj, 65408                    ; 2 uses
  store i32 %i.pq, ptr %i.a, align 4
  %i.pr = add nsw i32 %i.mi, -56657920
  %i.ps = lshr i32 %i.pr, 7
  br label %bb.di

bb.di:                                            ; preds = %bb.cw, %bb.df, %bb.dh
  %i.pt = phi i32 [ %i.pq, %bb.dh ], [ %i.pl, %bb.df ], [ %.lcssa.i500, %bb.cw ] ; 3 uses
  %.023.i498.ph = phi i32 [ %i.ps, %bb.dh ], [ %i.pm, %bb.df ], [ %.029.lcssa.wide.i499, %bb.cw ]
  %i.pu = load i8, ptr %i.an, align 1             ; 2 uses
  %i.pv = sext i8 %i.pu to i64
  %i.pw = getelementptr inbounds i8, ptr %i.am, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1             ; 5 uses
  %i.py = add i8 %i.pu, 1                         ; 2 uses
  %i.pz = icmp eq i8 %i.py, 8
  %spec.select.i502 = select i1 %i.pz, i8 0, i8 %i.py
  store i8 %spec.select.i502, ptr %i.an, align 1
  %i.qa = zext i8 %i.px to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.qa
  store i32 %i.pt, ptr %i.qb, align 4
  %i.qc = load i8, ptr %i.an, align 1
  %i.qd = sext i8 %i.qc to i32                    ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %bb.di
  %.019.i503 = phi i32 [ %i.qd, %bb.di ], [ %spec.store.select.i504, %bb.dj ] ; 2 uses
  %i.qe = add nsw i32 %.019.i503, -1
  %i.qf = icmp slt i32 %.019.i503, 1
  %spec.store.select.i504 = select i1 %i.qf, i32 7, i32 %i.qe ; 4 uses
  %i.qg = sext i32 %spec.store.select.i504 to i64 ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %i.am, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1
  %.not.i505 = icmp eq i8 %i.qi, %i.px
  br i1 %.not.i505, label %bb.dk, label %bb.dj, !llvm.loop !14

bb.dk:                                            ; preds = %bb.dj
  %i.qj = add nsw i32 %spec.store.select.i504, 1  ; 2 uses
  %i.qk = icmp eq i32 %i.qj, 8
  %spec.store.select1.i506 = select i1 %i.qk, i32 0, i32 %i.qj ; 2 uses
  %.not2021.i507 = icmp eq i32 %spec.store.select1.i506, %i.qd
  br i1 %.not2021.i507, label %_ZL16useDynamicWindowP8SCSUDataa.exit514, label %.lr.ph.i508

.lr.ph.i508:                                      ; preds = %bb.dk, %.lr.ph.i508
  %.023.i509 = phi i32 [ %spec.store.select2.i511, %.lr.ph.i508 ], [ %spec.store.select1.i506, %bb.dk ] ; 3 uses
  %.122.i510 = phi i32 [ %.023.i509, %.lr.ph.i508 ], [ %spec.store.select.i504, %bb.dk ]
  %i.ql = sext i32 %.023.i509 to i64              ; 2 uses
  %i.qm = getelementptr inbounds i8, ptr %i.am, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1
  %i.qo = sext i32 %.122.i510 to i64
  %i.qp = getelementptr inbounds i8, ptr %i.am, i64 %i.qo
  store i8 %i.qn, ptr %i.qp, align 1
  %i.qq = add nsw i32 %.023.i509, 1               ; 2 uses
  %i.qr = icmp eq i32 %i.qq, 8
  %spec.store.select2.i511 = select i1 %i.qr, i32 0, i32 %i.qq ; 2 uses
  %i.qs = load i8, ptr %i.an, align 1
  %i.qt = sext i8 %i.qs to i32
  %.not20.i512 = icmp eq i32 %spec.store.select2.i511, %i.qt
  br i1 %.not20.i512, label %_ZL16useDynamicWindowP8SCSUDataa.exit514, label %.lr.ph.i508, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit514:         ; preds = %.lr.ph.i508, %bb.dk
  %.pre-phi.i513 = phi i64 [ %i.qg, %bb.dk ], [ %i.ql, %.lr.ph.i508 ]
  %i.qu = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i513
  store i8 %i.px, ptr %i.qu, align 1
  %i.qv = zext i8 %i.px to i32
  %i.qw = shl nuw nsw i32 %i.qv, 21
  %i.qx = shl nuw nsw i32 %.023.i498.ph, 8
  %i.qy = add nuw nsw i32 %i.qx, 268304384
  %i.qz = sub i32 %i.mj, %i.pt
  %i.ra = or i32 %i.qy, %i.qw
  %i.rb = or i32 %i.ra, %i.qz
  %i.rc = or i32 %i.rb, -251658112
  br label %bb.dm

_ZL16getDynamicOffsetjPj.exit501:                 ; preds = %bb.dg, %bb.dd, %bb.cu, %_ZL9getWindowPKjj.exit482
  %i.rd = shl i32 %.4331, 16
  %i.re = or disjoint i32 %i.rd, %i.mc
  br label %bb.dm

bb.dl:                                            ; preds = %bb.ce
  %i.rf = or disjoint i32 %.lcssa698, 15728640
  br label %bb.dn

.loopexit.sink.split:                             ; preds = %bb.cf, %bb.ch, %.lr.ph.preheader, %bb.r, %bb.t, %bb.e, %.lr.ph.preheader1023, %.lr.ph, %bb.ed, %bb.ee, %.thread563, %bb.ea
  %.sink = phi i32 [ 15, %bb.ed ], [ 15, %.lr.ph ], [ 15, %bb.ea ], [ 15, %.thread563 ], [ 15, %bb.ee ], [ 15, %bb.e ], [ 12, %bb.ch ], [ 12, %bb.cf ], [ 12, %bb.t ], [ 15, %.lr.ph.preheader ], [ 12, %bb.r ], [ 15, %.lr.ph.preheader1023 ]
  %.8388.ph = phi ptr [ %.9389545, %bb.ed ], [ %i.jy, %.lr.ph ], [ %.9389545, %bb.ea ], [ %.9389545, %.thread563 ], [ %.9389545, %bb.ee ], [ %.1381, %bb.e ], [ %.7387, %bb.ch ], [ %.lcssa704, %bb.cf ], [ %.2382, %bb.t ], [ %.0380, %.lr.ph.preheader ], [ %i.as, %bb.r ], [ %i.ji, %.lr.ph.preheader1023 ]
  %.8368.ph = phi ptr [ %i.tp, %bb.ed ], [ %i.ki, %.lr.ph ], [ %.9369546, %bb.ea ], [ %i.tn, %.thread563 ], [ %i.tq, %bb.ee ], [ %.1361, %bb.e ], [ %.7367, %bb.ch ], [ %.6366652.lcssa677, %bb.cf ], [ %.2362, %bb.t ], [ %.0360, %.lr.ph.preheader ], [ %.1361, %bb.r ], [ %i.js, %.lr.ph.preheader1023 ]
  %.14.ph = phi ptr [ null, %bb.ed ], [ %.12, %.lr.ph ], [ %.15548, %bb.ea ], [ null, %.thread563 ], [ %i.tr, %bb.ee ], [ %.1343, %bb.e ], [ %.13, %bb.ch ], [ %.11654.lcssa683, %bb.cf ], [ %.5347, %bb.t ], [ %.0342, %.lr.ph.preheader ], [ %.1343, %bb.r ], [ %.12.peel, %.lr.ph.preheader1023 ]
  %.1340.ph = phi i8 [ %.2341549, %bb.ed ], [ 0, %.lr.ph ], [ %.2341549, %bb.ea ], [ %.2341549, %.thread563 ], [ %.2341549, %bb.ee ], [ %.0339, %bb.e ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ %.0339, %bb.t ], [ 0, %.lr.ph.preheader ], [ %.0339, %bb.r ], [ 0, %.lr.ph.preheader1023 ]
  %.1337.ph = phi i8 [ %.2338550, %bb.ed ], [ %.0336, %.lr.ph ], [ %.2338550, %bb.ea ], [ %.2338550, %.thread563 ], [ %.2338550, %bb.ee ], [ %.0336, %.lr.ph.preheader1023 ], [ %.0336, %bb.e ], [ %.0336, %bb.t ], [ %.0336, %bb.r ], [ %.0336, %.lr.ph.preheader ], [ %.0336, %bb.ch ], [ %.0336, %bb.cf ]
  %.5332.ph = phi i32 [ 0, %bb.ed ], [ 0, %.lr.ph ], [ %.8359547, %bb.ea ], [ 0, %.thread563 ], [ 0, %bb.ee ], [ %.1328, %bb.e ], [ %.4331, %bb.ch ], [ %.lcssa698, %bb.cf ], [ %.2329, %bb.t ], [ %.0327, %.lr.ph.preheader ], [ %i.au, %bb.r ], [ 0, %.lr.ph.preheader1023 ]
  store i32 %.sink, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.d, %bb.cg, %.preheader, %bb.bu, %bb.by, %.loopexit.sink.split
  %.8388 = phi ptr [ %i.jy, %bb.by ], [ %.8388.ph, %.loopexit.sink.split ], [ %.0380, %.preheader ], [ %.7387, %bb.cg ], [ %.2382, %bb.s ], [ %.1381, %bb.d ], [ %i.ji, %bb.bu ]
  %.8368 = phi ptr [ %i.ki, %bb.by ], [ %.8368.ph, %.loopexit.sink.split ], [ %.0360, %.preheader ], [ %.7367, %bb.cg ], [ %.2362, %bb.s ], [ %.1361, %bb.d ], [ %i.js, %bb.bu ]
  %.14 = phi ptr [ %.12, %bb.by ], [ %.14.ph, %.loopexit.sink.split ], [ %.0342, %.preheader ], [ %.13, %bb.cg ], [ %.5347, %bb.s ], [ %.1343, %bb.d ], [ %.12.peel, %bb.bu ]
  %.1340 = phi i8 [ 0, %bb.by ], [ %.1340.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.cg ], [ %.0339, %bb.s ], [ %.0339, %bb.d ], [ 0, %bb.bu ]
  %.1337 = phi i8 [ %.0336, %bb.by ], [ %.1337.ph, %.loopexit.sink.split ], [ %.0336, %bb.bu ], [ %.0336, %.preheader ], [ %.0336, %bb.cg ], [ %.0336, %bb.d ], [ %.0336, %bb.s ]
  %.5332 = phi i32 [ 0, %bb.by ], [ %.5332.ph, %.loopexit.sink.split ], [ %.0327, %.preheader ], [ %.4331, %bb.cg ], [ %.2329, %bb.s ], [ %.1328, %bb.d ], [ 0, %bb.bu ]
  store i8 %.1340, ptr %i.t, align 4
  store i8 %.1337, ptr %i.v, align 1
  store i32 %.5332, ptr %i.ab, align 4
  store ptr %.8388, ptr %i.f, align 8
  store ptr %.8368, ptr %i.j, align 8
  store ptr %.14, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.dm:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit501, %_ZL16useDynamicWindowP8SCSUDataa.exit514, %bb.ax, %_ZL16useDynamicWindowP8SCSUDataa.exit446
  %.9389.jt4 = phi ptr [ %i.mf, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %i.bv, %bb.ax ], [ %i.bv, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.mf, %_ZL16getDynamicOffsetjPj.exit501 ] ; 3 uses
  %.9369.jt4 = phi ptr [ %.7367, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %i.gq, %bb.ax ], [ %.2362, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.7367, %_ZL16getDynamicOffsetjPj.exit501 ] ; 3 uses
  %.8359.jt4 = phi i32 [ %.7358, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %i.gs, %bb.ax ], [ %.2353, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.7358, %_ZL16getDynamicOffsetjPj.exit501 ] ; 4 uses
  %.15.jt4 = phi ptr [ %.13, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %.7349, %bb.ax ], [ %.5347, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.13, %_ZL16getDynamicOffsetjPj.exit501 ] ; 4 uses
  %.2341.jt4 = phi i8 [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ 0, %bb.ax ], [ %.0339, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ 0, %_ZL16getDynamicOffsetjPj.exit501 ] ; 3 uses
  %.2338.jt4 = phi i8 [ %i.px, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %.0336, %bb.ax ], [ %i.fk, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.0336, %_ZL16getDynamicOffsetjPj.exit501 ] ; 3 uses
  %.1335.jt4 = phi i32 [ %i.pt, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %.0334, %bb.ax ], [ %i.fg, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.0334, %_ZL16getDynamicOffsetjPj.exit501 ] ; 2 uses
  %.6333.jt4 = phi i32 [ %i.rc, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %i.gu, %bb.ax ], [ %i.gp, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.re, %_ZL16getDynamicOffsetjPj.exit501 ] ; 4 uses
  %.5326.jt4 = phi i32 [ %.4325, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %.2323, %bb.ax ], [ %.2323, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.4325, %_ZL16getDynamicOffsetjPj.exit501 ] ; 3 uses
  %.8.jt4 = phi i32 [ %i.mg, %_ZL16useDynamicWindowP8SCSUDataa.exit514 ], [ %i.bw, %bb.ax ], [ %i.bw, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.mg, %_ZL16getDynamicOffsetjPj.exit501 ] ; 2 uses
  %.not423.jt4 = icmp samesign ult i32 %.8359.jt4, 4
  br i1 %.not423.jt4, label %.thread, label %bb.dp

bb.dn:                                            ; preds = %bb.cd, %bb.dl, %bb.bn, %bb.bm, %bb.bi, %bb.bb
  %.9389.jt3 = phi ptr [ %i.as, %bb.bi ], [ %.lcssa704, %bb.cd ], [ %i.as, %bb.bb ], [ %i.as, %bb.bm ], [ %i.as, %bb.bn ], [ %.lcssa704, %bb.dl ] ; 3 uses
  %.9369.jt3 = phi ptr [ %.1361, %bb.bi ], [ %.6366652.lcssa677, %bb.cd ], [ %.1361, %bb.bb ], [ %.1361, %bb.bm ], [ %.1361, %bb.bn ], [ %.6366652.lcssa677, %bb.dl ] ; 3 uses
  %.8359.jt3 = phi i32 [ %.1352, %bb.bi ], [ %.6357653.lcssa680, %bb.cd ], [ %.1352, %bb.bb ], [ %.1352, %bb.bm ], [ %.1352, %bb.bn ], [ %.6357653.lcssa680, %bb.dl ] ; 4 uses
  %.15.jt3 = phi ptr [ %.1343, %bb.bi ], [ %.11654.lcssa683, %bb.cd ], [ %.1343, %bb.bb ], [ %.1343, %bb.bm ], [ %.1343, %bb.bn ], [ %.11654.lcssa683, %bb.dl ] ; 3 uses
  %.2341.jt3 = phi i8 [ %.0339, %bb.bi ], [ 1, %bb.cd ], [ %.0339, %bb.bb ], [ 0, %bb.bm ], [ %.0339, %bb.bn ], [ 0, %bb.dl ] ; 3 uses
  %.2338.jt3 = phi i8 [ %i.il, %bb.bi ], [ %i.lj, %bb.cd ], [ %.0336, %bb.bb ], [ %.0336, %bb.bm ], [ %.0336, %bb.bn ], [ %.0336, %bb.dl ] ; 3 uses
  %.1335.jt3 = phi i32 [ %i.io, %bb.bi ], [ %i.lm, %bb.cd ], [ %.0334, %bb.bb ], [ %.0334, %bb.bm ], [ %.0334, %bb.bn ], [ %.0334, %bb.dl ] ; 2 uses
  %.6333.jt3 = phi i32 [ %i.iy, %bb.bi ], [ %i.lw, %bb.cd ], [ %i.ha, %bb.bb ], [ %i.je, %bb.bm ], [ %i.jf, %bb.bn ], [ %i.rf, %bb.dl ] ; 3 uses
  %.5326.jt3 = phi i32 [ %.1322, %bb.bi ], [ %.3324656.lcssa689, %bb.cd ], [ %.1322, %bb.bb ], [ %.1322, %bb.bm ], [ %.1322, %bb.bn ], [ %.3324656.lcssa689, %bb.dl ] ; 2 uses
  %.8.jt3 = phi i32 [ %i.av, %bb.bi ], [ %.lcssa695, %bb.cd ], [ %i.av, %bb.bb ], [ %i.av, %bb.bm ], [ %i.av, %bb.bn ], [ %.lcssa695, %bb.dl ] ; 2 uses
  %.not423.jt3 = icmp samesign ult i32 %.8359.jt3, 3
  br i1 %.not423.jt3, label %.thread, label %bb.dq

bb.do:                                            ; preds = %_ZL9getWindowPKjj.exit466, %_ZL16useDynamicWindowP8SCSUDataa.exit478, %bb.cc, %bb.ca, %_ZL16useDynamicWindowP8SCSUDataa.exit494, %_ZL16useDynamicWindowP8SCSUDataa.exit, %bb.bg, %_ZL24isInOffsetWindowOrDirectjj.exit.thread, %_ZL16useDynamicWindowP8SCSUDataa.exit462, %bb.az, %bb.m
  %.9389.jt2 = phi ptr [ %i.as, %bb.m ], [ %i.as, %bb.az ], [ %.lcssa704, %bb.ca ], [ %i.as, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %i.as, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.as, %bb.bg ], [ %.lcssa704, %bb.cc ], [ %.lcssa704, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %i.mf, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %i.bv, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa704, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.9369.jt2 = phi ptr [ %.1361, %bb.m ], [ %.1361, %bb.az ], [ %.6366652.lcssa677, %bb.ca ], [ %.1361, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.1361, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1361, %bb.bg ], [ %.6366652.lcssa677, %bb.cc ], [ %.6366652.lcssa677, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %.7367, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.2362, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6366652.lcssa677, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.8359.jt2 = phi i32 [ %.1352, %bb.m ], [ %.1352, %bb.az ], [ %.6357653.lcssa680, %bb.ca ], [ %.1352, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.1352, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1352, %bb.bg ], [ %.6357653.lcssa680, %bb.cc ], [ %.6357653.lcssa680, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %.7358, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.2353, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6357653.lcssa680, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.15.jt2 = phi ptr [ %.1343, %bb.m ], [ %.1343, %bb.az ], [ %.11654.lcssa683, %bb.ca ], [ %.1343, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.1343, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1343, %bb.bg ], [ %.11654.lcssa683, %bb.cc ], [ %.11654.lcssa683, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %.13, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.5347, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.11654.lcssa683, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.2341.jt2 = phi i8 [ %.0339, %bb.m ], [ %.0339, %bb.az ], [ 0, %bb.ca ], [ %.0339, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.0339, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0339, %bb.bg ], [ 1, %bb.cc ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.0339, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ 0, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.2338.jt2 = phi i8 [ %.0336, %bb.m ], [ %.0336, %bb.az ], [ %.0336, %bb.ca ], [ %2, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.0336, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0336, %bb.bg ], [ %.0336, %bb.cc ], [ %4, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %.06.i481.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.06.i.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0336, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.1335.jt2 = phi i32 [ %.0334, %bb.m ], [ %.0334, %bb.az ], [ %.0334, %bb.ca ], [ %i.hd, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.0334, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0334, %bb.bg ], [ %.0334, %bb.cc ], [ %8, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %i.no, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %i.df, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0334, %_ZL9getWindowPKjj.exit466 ] ; 2 uses
  %.6333.jt2 = phi i32 [ %i.bg, %bb.m ], [ %i.gx, %bb.az ], [ %.lcssa698, %bb.ca ], [ %i.hr, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %i.hw, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.if, %bb.bg ], [ %i.kz, %bb.cc ], [ %i.ld, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %i.om, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %i.ed, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa698, %_ZL9getWindowPKjj.exit466 ] ; 3 uses
  %.5326.jt2 = phi i32 [ %.1322, %bb.m ], [ %.1322, %bb.az ], [ %.3324656.lcssa689, %bb.ca ], [ %.1322, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %.1322, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1322, %bb.bg ], [ %.3324656.lcssa689, %bb.cc ], [ %.3324656.lcssa689, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %.4325, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %.2323, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.3324656.lcssa689, %_ZL9getWindowPKjj.exit466 ] ; 2 uses
  %.8.jt2 = phi i32 [ %i.av, %bb.m ], [ %i.av, %bb.az ], [ %.lcssa695, %bb.ca ], [ %i.av, %_ZL16useDynamicWindowP8SCSUDataa.exit462 ], [ %i.av, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.av, %bb.bg ], [ %.lcssa695, %bb.cc ], [ %.lcssa695, %_ZL16useDynamicWindowP8SCSUDataa.exit478 ], [ %i.mg, %_ZL16useDynamicWindowP8SCSUDataa.exit494 ], [ %i.bw, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa695, %_ZL9getWindowPKjj.exit466 ] ; 2 uses
  %.not423.jt2 = icmp samesign ult i32 %.8359.jt2, 2
  br i1 %.not423.jt2, label %.thread, label %bb.dr

bb.dp:                                            ; preds = %bb.dm
  %i.rg = icmp eq ptr %.15.jt4, null
  %i.rh = lshr i32 %.6333.jt4, 24
  %i.ri = trunc nuw i32 %i.rh to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.9369.jt4, i64 1 ; 2 uses
  store i8 %i.ri, ptr %.9369.jt4, align 1
  br i1 %i.rg, label %bb.ds, label %bb.du

bb.dq:                                            ; preds = %bb.dn
  %i.rk = icmp eq ptr %.15.jt3, null
  br i1 %i.rk, label %bb.ds, label %.thread884

bb.dr:                                            ; preds = %bb.do
  %i.rl = icmp eq ptr %.15.jt2, null
  br i1 %i.rl, label %bb.dt, label %.thread896

bb.ds:                                            ; preds = %bb.dp, %bb.dq
  %.0317840.neg = phi i32 [ -3, %bb.dq ], [ -4, %bb.dp ]
  %.8835 = phi i32 [ %.8.jt3, %bb.dq ], [ %.8.jt4, %bb.dp ]
  %.6333830 = phi i32 [ %.6333.jt3, %bb.dq ], [ %.6333.jt4, %bb.dp ] ; 2 uses
  %.1335825 = phi i32 [ %.1335.jt3, %bb.dq ], [ %.1335.jt4, %bb.dp ]
  %.2338821 = phi i8 [ %.2338.jt3, %bb.dq ], [ %.2338.jt4, %bb.dp ]
  %.2341816 = phi i8 [ %.2341.jt3, %bb.dq ], [ %.2341.jt4, %bb.dp ]
  %.8359809 = phi i32 [ %.8359.jt3, %bb.dq ], [ %.8359.jt4, %bb.dp ]
  %.9389802 = phi ptr [ %.9389.jt3, %bb.dq ], [ %.9389.jt4, %bb.dp ]
  %.10370 = phi ptr [ %.9369.jt3, %bb.dq ], [ %i.rj, %bb.dp ] ; 2 uses
  %i.rm = lshr i32 %.6333830, 16
  %i.rn = trunc i32 %i.rm to i8
  %i.ro = getelementptr inbounds nuw i8, ptr %.10370, i64 1
  store i8 %i.rn, ptr %.10370, align 1
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %.0317841.neg = phi i32 [ -2, %bb.dr ], [ %.0317840.neg, %bb.ds ]
  %.8836 = phi i32 [ %.8.jt2, %bb.dr ], [ %.8835, %bb.ds ]
  %.6333831 = phi i32 [ %.6333.jt2, %bb.dr ], [ %.6333830, %bb.ds ] ; 2 uses
  %.1335826 = phi i32 [ %.1335.jt2, %bb.dr ], [ %.1335825, %bb.ds ]
  %.2338822 = phi i8 [ %.2338.jt2, %bb.dr ], [ %.2338821, %bb.ds ]
  %.2341817 = phi i8 [ %.2341.jt2, %bb.dr ], [ %.2341816, %bb.ds ]
  %.8359810 = phi i32 [ %.8359.jt2, %bb.dr ], [ %.8359809, %bb.ds ]
  %.9389803 = phi ptr [ %.9389.jt2, %bb.dr ], [ %.9389802, %bb.ds ]
  %.11371 = phi ptr [ %.9369.jt2, %bb.dr ], [ %i.ro, %bb.ds ] ; 3 uses
  %i.rp = lshr i32 %.6333831, 8
  %i.rq = trunc i32 %i.rp to i8
  store i8 %i.rq, ptr %.11371, align 1
  %i.rr = getelementptr inbounds nuw i8, ptr %.11371, i64 1
  %i.rs = trunc i32 %.6333831 to i8
  store i8 %i.rs, ptr %i.rr, align 1
  br label %bb.dv

bb.du:                                            ; preds = %bb.dp
  %i.rt = getelementptr inbounds nuw i8, ptr %.15.jt4, i64 4
  store i32 %.5326.jt4, ptr %.15.jt4, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.dq, %bb.du
  %.9389801882 = phi ptr [ %.9389.jt4, %bb.du ], [ %.9389.jt3, %bb.dq ]
  %.8359808878 = phi i32 [ %.8359.jt4, %bb.du ], [ %.8359.jt3, %bb.dq ]
  %.2341815874 = phi i8 [ %.2341.jt4, %bb.du ], [ %.2341.jt3, %bb.dq ]
  %.2338820871 = phi i8 [ %.2338.jt4, %bb.du ], [ %.2338.jt3, %bb.dq ]
  %.1335824868 = phi i32 [ %.1335.jt4, %bb.du ], [ %.1335.jt3, %bb.dq ]
  %.6333829865 = phi i32 [ %.6333.jt4, %bb.du ], [ %.6333.jt3, %bb.dq ] ; 2 uses
  %.5326833862 = phi i32 [ %.5326.jt4, %bb.du ], [ %.5326.jt3, %bb.dq ] ; 2 uses
  %.8834859 = phi i32 [ %.8.jt4, %bb.du ], [ %.8.jt3, %bb.dq ]
  %.0317839856.neg = phi i32 [ -4, %bb.du ], [ -3, %bb.dq ]
  %.13373 = phi ptr [ %i.rj, %bb.du ], [ %.9369.jt3, %bb.dq ] ; 2 uses
  %.16 = phi ptr [ %i.rt, %bb.du ], [ %.15.jt3, %bb.dq ] ; 2 uses
  %i.ru = lshr i32 %.6333829865, 16
  %i.rv = trunc i32 %i.ru to i8
  %i.rw = getelementptr inbounds nuw i8, ptr %.13373, i64 1
  store i8 %i.rv, ptr %.13373, align 1
  %i.rx = getelementptr inbounds nuw i8, ptr %.16, i64 4
  store i32 %.5326833862, ptr %.16, align 4
  br label %.thread896

.thread896:                                       ; preds = %bb.dr, %.thread884
  %.9389801881 = phi ptr [ %.9389801882, %.thread884 ], [ %.9389.jt2, %bb.dr ]
  %.8359808877 = phi i32 [ %.8359808878, %.thread884 ], [ %.8359.jt2, %bb.dr ]
  %.2341815873 = phi i8 [ %.2341815874, %.thread884 ], [ %.2341.jt2, %bb.dr ]
  %.2338820870 = phi i8 [ %.2338820871, %.thread884 ], [ %.2338.jt2, %bb.dr ]
  %.1335824867 = phi i32 [ %.1335824868, %.thread884 ], [ %.1335.jt2, %bb.dr ]
  %.6333829866 = phi i32 [ %.6333829865, %.thread884 ], [ %.6333.jt2, %bb.dr ] ; 2 uses
  %.5326833863 = phi i32 [ %.5326833862, %.thread884 ], [ %.5326.jt2, %bb.dr ] ; 2 uses
  %.8834858 = phi i32 [ %.8834859, %.thread884 ], [ %.8.jt2, %bb.dr ]
  %.0317839855.neg = phi i32 [ %.0317839856.neg, %.thread884 ], [ -2, %bb.dr ]
  %.14374 = phi ptr [ %i.rw, %.thread884 ], [ %.9369.jt2, %bb.dr ] ; 3 uses
  %.17 = phi ptr [ %i.rx, %.thread884 ], [ %.15.jt2, %bb.dr ] ; 3 uses
  %i.ry = lshr i32 %.6333829866, 8
  %i.rz = trunc i32 %i.ry to i8
  store i8 %i.rz, ptr %.14374, align 1
  store i32 %.5326833863, ptr %.17, align 4
  %i.sa = getelementptr inbounds nuw i8, ptr %.17, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %.14374, i64 1
  %i.sc = trunc i32 %.6333829866 to i8
  store i8 %i.sc, ptr %i.sb, align 1
  %i.sd = getelementptr inbounds nuw i8, ptr %.17, i64 8
  store i32 %.5326833863, ptr %i.sa, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %.thread896, %bb.dt
  %.0317842.neg = phi i32 [ %.0317839855.neg, %.thread896 ], [ %.0317841.neg, %bb.dt ]
  %.8837 = phi i32 [ %.8834858, %.thread896 ], [ %.8836, %bb.dt ] ; 2 uses
  %.1335827 = phi i32 [ %.1335824867, %.thread896 ], [ %.1335826, %bb.dt ]
  %.2338823 = phi i8 [ %.2338820870, %.thread896 ], [ %.2338822, %bb.dt ]
  %.2341818 = phi i8 [ %.2341815873, %.thread896 ], [ %.2341817, %bb.dt ]
  %.8359811 = phi i32 [ %.8359808877, %.thread896 ], [ %.8359810, %bb.dt ]
  %.9389804 = phi ptr [ %.9389801881, %.thread896 ], [ %.9389803, %bb.dt ]
  %.14374.pn = phi ptr [ %.14374, %.thread896 ], [ %.11371, %bb.dt ]
  %.19 = phi ptr [ %i.sd, %.thread896 ], [ null, %bb.dt ]
  %.16376 = getelementptr inbounds nuw i8, ptr %.14374.pn, i64 2
  %i.se = add i32 %.0317842.neg, %.8359811
  br label %bb.b

.thread:                                          ; preds = %bb.do, %bb.dn, %bb.dm, %bb.br, %bb.bv
  %.0317553 = phi i32 [ 2, %bb.bv ], [ 2, %bb.do ], [ 3, %bb.dn ], [ 4, %bb.dm ], [ 2, %bb.br ]
  %.5326552 = phi i32 [ %.66571080, %bb.bv ], [ %.5326.jt2, %bb.do ], [ %.5326.jt3, %bb.dn ], [ %.5326.jt4, %bb.dm ], [ %.0321, %bb.br ] ; 3 uses
  %.6333551 = phi i32 [ %i.ka, %bb.bv ], [ %.6333.jt2, %bb.do ], [ %.6333.jt3, %bb.dn ], [ %.6333.jt4, %bb.dm ], [ %i.jk, %bb.br ] ; 5 uses
  %.2338550 = phi i8 [ %.0336, %bb.bv ], [ %.2338.jt2, %bb.do ], [ %.2338.jt3, %bb.dn ], [ %.2338.jt4, %bb.dm ], [ %.0336, %bb.br ] ; 4 uses
  %.2341549 = phi i8 [ 0, %bb.bv ], [ %.2341.jt2, %bb.do ], [ %.2341.jt3, %bb.dn ], [ %.2341.jt4, %bb.dm ], [ 0, %bb.br ] ; 4 uses
  %.15548 = phi ptr [ %.116541081, %bb.bv ], [ %.15.jt2, %bb.do ], [ %.15.jt3, %bb.dn ], [ %.15.jt4, %bb.dm ], [ %.0342, %bb.br ] ; 8 uses
  %.8359547 = phi i32 [ 1, %bb.bv ], [ 1, %bb.do ], [ %.8359.jt3, %bb.dn ], [ %.8359.jt4, %bb.dm ], [ 1, %bb.br ] ; 3 uses
  %.9369546 = phi ptr [ %.63666521082, %bb.bv ], [ %.9369.jt2, %bb.do ], [ %.9369.jt3, %bb.dn ], [ %.9369.jt4, %bb.dm ], [ %.0360, %bb.br ] ; 9 uses
  %.9389545 = phi ptr [ %i.jy, %bb.bv ], [ %.9389.jt2, %bb.do ], [ %.9389.jt3, %bb.dn ], [ %.9389.jt4, %bb.dm ], [ %i.ji, %bb.br ] ; 4 uses
  %i.sf = sub nsw i32 %.0317553, %.8359547        ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  switch i32 %i.sf, label %bb.ea [
    i32 4, label %bb.dw
    i32 3, label %bb.dx
    i32 2, label %bb.dy
    i32 1, label %bb.dz
  ]

bb.dw:                                            ; preds = %.thread
  %i.sh = lshr i32 %.6333551, 24
  %i.si = trunc nuw i32 %i.sh to i8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  store i8 %i.si, ptr %i.sg, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.thread
  %.0 = phi ptr [ %i.sj, %bb.dw ], [ %i.sg, %.thread ] ; 2 uses
  %i.sk = lshr i32 %.6333551, 16
  %i.sl = trunc i32 %i.sk to i8
  %i.sm = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.sl, ptr %.0, align 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.thread
  %.1 = phi ptr [ %i.sm, %bb.dx ], [ %i.sg, %.thread ] ; 2 uses
  %i.sn = lshr i32 %.6333551, 8
  %i.so = trunc i32 %i.sn to i8
  %i.sp = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.so, ptr %.1, align 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.thread
  %.2 = phi ptr [ %i.sp, %bb.dy ], [ %i.sg, %.thread ]
  %i.sq = trunc i32 %.6333551 to i8
  store i8 %i.sq, ptr %.2, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %.thread, %bb.dz
  %i.sr = trunc nsw i32 %i.sf to i8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 %i.sr, ptr %i.ss, align 1
  %i.st = shl nsw i32 %i.sf, 3
  %i.su = lshr i32 %.6333551, %i.st               ; 7 uses
  switch i32 %.8359547, label %.unreachabledefault [
    i32 3, label %bb.eb
    i32 2, label %bb.ec
    i32 1, label %bb.ed
    i32 0, label %.loopexit.sink.split
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.sv = lshr i32 %i.su, 16
  %i.sw = trunc i32 %i.sv to i8
  %i.sx = getelementptr inbounds nuw i8, ptr %.9369546, i64 1 ; 2 uses
  store i8 %i.sw, ptr %.9369546, align 1
  %.not424 = icmp eq ptr %.15548, null
  br i1 %.not424, label %.thread554, label %.thread558

.thread554:                                       ; preds = %bb.eb
  %i.sy = lshr i32 %i.su, 8
  %i.sz = trunc i32 %i.sy to i8
  %i.ta = getelementptr inbounds nuw i8, ptr %.9369546, i64 2
  store i8 %i.sz, ptr %i.sx, align 1
  br label %.thread563

.thread558:                                       ; preds = %bb.eb
  %i.tb = getelementptr inbounds nuw i8, ptr %.15548, i64 4
  store i32 %.5326552, ptr %.15548, align 4
  %i.tc = lshr i32 %i.su, 8
  %i.td = trunc i32 %i.tc to i8
end_hunk_0
