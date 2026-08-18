inline.NumInlined: 30
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL25_SCSUToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

.loopexit383:                                     ; preds = %bb.s, %.split.us, %bb.bh, %bb.av
  %.14 = phi ptr [ %i.n, %bb.av ], [ null, %.split.us ], [ %i.he, %bb.bh ], [ %.7328, %bb.s ] ; 2 uses
  %.5298 = phi i8 [ %i.x, %bb.av ], [ %.7300515.us, %.split.us ], [ %.7300515.us, %bb.bh ], [ %.2295, %bb.s ] ; 3 uses
  %.6290 = phi i8 [ %i.t, %bb.av ], [ %.7291, %.split.us ], [ %.7291, %bb.bh ], [ %.2286, %bb.s ] ; 3 uses
  %.6281 = phi i8 [ %i.v, %bb.av ], [ %.7282, %.split.us ], [ %.7282, %bb.bh ], [ %.2277, %bb.s ] ; 3 uses
  %.4272 = phi i32 [ 0, %bb.av ], [ %i.gt, %.split.us ], [ %i.gt, %bb.bh ], [ %i.bq, %bb.s ] ; 4 uses
  %.10 = phi ptr [ %i.j, %bb.av ], [ %i.hd, %.split.us ], [ %i.hd, %bb.bh ], [ %.6255, %bb.s ] ; 3 uses
  %.5 = phi ptr [ %i.f, %bb.av ], [ %i.gr, %.split.us ], [ %i.gr, %bb.bh ], [ %i.bp, %bb.s ] ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.fv = icmp ult ptr %i.fu, %i.h
  %i.fw = icmp ult ptr %.10, %i.l
  %or.cond372498 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond372498, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.loopexit383, %bb.ay
  %i.fx = phi ptr [ %i.gk, %bb.ay ], [ %i.fu, %.loopexit383 ]
  %.6503 = phi ptr [ %i.gj, %bb.ay ], [ %.5, %.loopexit383 ] ; 4 uses
  %.11502 = phi ptr [ %i.gg, %bb.ay ], [ %.10, %.loopexit383 ] ; 3 uses
  %.6265501 = phi i32 [ %i.gi, %bb.ay ], [ %.4272, %.loopexit383 ] ; 4 uses
  %.5273500 = phi i32 [ %.6265501, %bb.ay ], [ %.4272, %.loopexit383 ] ; 2 uses
  %.15499 = phi ptr [ %.16, %bb.ay ], [ %.14, %.loopexit383 ] ; 4 uses
  %i.fy = load i8, ptr %.6503, align 1            ; 2 uses
  %i.fz = add i8 %i.fy, 13
  %i.ga = icmp ult i8 %i.fz, -19
  br i1 %i.ga, label %bb.aw, label %.critedge2

bb.aw:                                            ; preds = %.lr.ph
  %i.gb = zext i8 %i.fy to i16
  %i.gc = shl nuw i16 %i.gb, 8
  %i.gd = load i8, ptr %i.fx, align 1
  %i.ge = zext i8 %i.gd to i16
  %i.gf = or disjoint i16 %i.gc, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %.11502, i64 2 ; 3 uses
  store i16 %i.gf, ptr %.11502, align 2
  %.not364 = icmp eq ptr %.15499, null
  br i1 %.not364, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %.15499, i64 4
  store i32 %.5273500, ptr %.15499, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.16 = phi ptr [ %i.gh, %bb.ax ], [ null, %bb.aw ] ; 2 uses
  %i.gi = add nsw i32 %.6265501, 2                ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.6503, i64 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.6503, i64 3 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %i.h
  %i.gm = icmp ult ptr %i.gg, %i.l
  %or.cond372 = select i1 %i.gl, i1 %i.gm, i1 false
  br i1 %or.cond372, label %.lr.ph, label %.critedge2, !llvm.loop !12

.critedge2:                                       ; preds = %bb.ay, %.lr.ph, %.loopexit383, %bb.av
  %.17 = phi ptr [ %i.n, %bb.av ], [ %.14, %.loopexit383 ], [ %.16, %bb.ay ], [ %.15499, %.lr.ph ] ; 9 uses
  %.7310 = phi i8 [ %i.r, %bb.av ], [ 0, %.loopexit383 ], [ 0, %.lr.ph ], [ 0, %bb.ay ] ; 3 uses
  %.6299 = phi i8 [ %i.x, %bb.av ], [ %.5298, %.loopexit383 ], [ %.5298, %.lr.ph ], [ %.5298, %bb.ay ] ; 3 uses
  %.7291 = phi i8 [ %i.t, %bb.av ], [ %.6290, %.loopexit383 ], [ %.6290, %.lr.ph ], [ %.6290, %bb.ay ] ; 8 uses
  %.7282 = phi i8 [ %i.v, %bb.av ], [ %.6281, %.loopexit383 ], [ %.6281, %.lr.ph ], [ %.6281, %bb.ay ] ; 7 uses
  %.6274 = phi i32 [ -1, %bb.av ], [ %.4272, %.loopexit383 ], [ %.6265501, %bb.ay ], [ %.5273500, %.lr.ph ] ; 2 uses
  %.7266 = phi i32 [ 0, %bb.av ], [ %.4272, %.loopexit383 ], [ %i.gi, %bb.ay ], [ %.6265501, %.lr.ph ]
  %.12 = phi ptr [ %i.j, %bb.av ], [ %.10, %.loopexit383 ], [ %i.gg, %bb.ay ], [ %.11502, %.lr.ph ] ; 9 uses
  %.7 = phi ptr [ %i.f, %bb.av ], [ %.5, %.loopexit383 ], [ %i.gj, %bb.ay ], [ %.6503, %.lr.ph ] ; 4 uses
  %i.gn = icmp ult ptr %.7, %i.h
  br i1 %i.gn, label %.lr.ph518, label %.loopexit

.lr.ph518:                                        ; preds = %.critedge2
  %.not362 = icmp ult ptr %.12, %i.l
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 4 uses
  br i1 %.not362, label %.lr.ph518.split.us, label %.lr.ph518.split

.lr.ph518.split.us:                               ; preds = %.lr.ph518, %bb.bg
  %.8517.us = phi ptr [ %i.gr, %bb.bg ], [ %.7, %.lr.ph518 ] ; 2 uses
  %.8267516.us = phi i32 [ %i.gt, %bb.bg ], [ %.7266, %.lr.ph518 ]
  %.7300515.us = phi i8 [ %.8301.us, %bb.bg ], [ %.6299, %.lr.ph518 ] ; 8 uses
  %.8311514.us = phi i8 [ %.9312.us, %bb.bg ], [ %.7310, %.lr.ph518 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.8517.us, i64 1 ; 8 uses
  %i.gs = load i8, ptr %.8517.us, align 1         ; 12 uses
  %i.gt = add nsw i32 %.8267516.us, 1             ; 5 uses
  switch i8 %.8311514.us, label %bb.bg [
    i8 0, label %bb.ba
    i8 1, label %bb.az
    i8 2, label %.split.us
  ]

bb.az:                                            ; preds = %.lr.ph518.split.us
  store i8 %i.gs, ptr %i.go, align 2
  br label %.sink.split

bb.ba:                                            ; preds = %.lr.ph518.split.us
  %i.gu = add i8 %i.gs, 32                        ; 2 uses
  %i.gv = icmp ugt i8 %i.gu, 18
  br i1 %i.gv, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gw = icmp samesign ult i8 %i.gs, -24
  br i1 %i.gw, label %.loopexit385.split.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gx = icmp samesign ult i8 %i.gs, -16
  br i1 %i.gx, label %.split530.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  switch i8 %i.gs, label %.split536.us [
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
  %.sink838 = phi i8 [ 1, %bb.bf ], [ 1, %bb.be ], [ 2, %bb.az ]
  %.9312.us.ph = phi i8 [ 2, %bb.bf ], [ 1, %bb.be ], [ 2, %bb.az ]
  %.8301.us.ph = phi i8 [ %i.gs, %bb.bf ], [ %.7300515.us, %bb.be ], [ %i.gs, %bb.az ]
  store i8 %.sink838, ptr %i.gp, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %.lr.ph518.split.us
  %.9312.us = phi i8 [ %.8311514.us, %.lr.ph518.split.us ], [ %.9312.us.ph, %.sink.split ] ; 2 uses
  %.8301.us = phi i8 [ %.7300515.us, %.lr.ph518.split.us ], [ %.8301.us.ph, %.sink.split ] ; 2 uses
  %exitcond.not = icmp eq ptr %i.gr, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph518.split.us, !llvm.loop !13

.lr.ph518.split:                                  ; preds = %.lr.ph518
  store i32 15, ptr %1, align 4
  br label %.loopexit

.split530.us:                                     ; preds = %bb.bc
  %i.gy = add nsw i8 %i.gs, 24
  br label %.critedge.sink.split

.split536.us:                                     ; preds = %bb.bd
  store i32 12, ptr %1, align 4
  store i8 %i.gs, ptr %i.gq, align 1
  store i8 1, ptr %i.gp, align 8
  br label %.loopexit

.split.us:                                        ; preds = %.lr.ph518.split.us
  %i.gz = zext i8 %.7300515.us to i16
  %i.ha = shl nuw i16 %i.gz, 8
  %i.hb = zext i8 %i.gs to i16
  %i.hc = or disjoint i16 %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.12, i64 2 ; 2 uses
  store i16 %i.hc, ptr %.12, align 2
  %.not363 = icmp eq ptr %.17, null
  br i1 %.not363, label %.loopexit383, label %bb.bh

bb.bh:                                            ; preds = %.split.us
  %i.he = getelementptr inbounds nuw i8, ptr %.17, i64 4
  store i32 %.6274, ptr %.17, align 4
  br label %.loopexit383

.loopexit:                                        ; preds = %bb.bg, %bb.u, %bb.y, %bb.x, %bb.w, %bb.v, %.loopexit771, %.loopexit772, %.critedge2, %.critedge, %bb.al, %bb.o, %.lr.ph570.split, %.lr.ph518.split, %.split536.us, %bb.at, %bb.am, %.split615.us
  %.19 = phi ptr [ %.2323, %bb.o ], [ %.7328, %.lr.ph570.split ], [ %.17, %.lr.ph518.split ], [ %.17, %.split536.us ], [ %.7328, %.critedge ], [ %.7328, %.split615.us ], [ %.10331, %bb.al ], [ %.7328, %bb.am ], [ %.7328, %bb.at ], [ %.17, %.critedge2 ], [ %.7328, %bb.u ], [ %.7328, %.loopexit772 ], [ %.7328, %.loopexit771 ], [ %.7328, %bb.v ], [ %.7328, %bb.w ], [ %.7328, %bb.x ], [ %.7328, %bb.y ], [ %.17, %bb.bg ]
  %.5320 = phi i8 [ %.0315, %bb.o ], [ %.2317, %.lr.ph570.split ], [ 0, %.lr.ph518.split ], [ 0, %.split536.us ], [ %.2317, %.critedge ], [ %.2317, %.split615.us ], [ %.2317, %bb.al ], [ %.2317, %bb.am ], [ %.2317, %bb.at ], [ 0, %.critedge2 ], [ %.2317, %bb.u ], [ %.2317, %.loopexit772 ], [ %.2317, %.loopexit771 ], [ %.2317, %bb.v ], [ %.2317, %bb.w ], [ %.2317, %bb.x ], [ %.2317, %bb.y ], [ 0, %bb.bg ]
  %.10313 = phi i8 [ 0, %bb.o ], [ %.2305, %.lr.ph570.split ], [ %.7310, %.lr.ph518.split ], [ 0, %.split536.us ], [ %.2305, %.critedge ], [ 0, %.split615.us ], [ 3, %bb.al ], [ 6, %bb.am ], [ 6, %bb.at ], [ %.7310, %.critedge2 ], [ %.2305, %bb.u ], [ 5, %.loopexit772 ], [ 2, %.loopexit771 ], [ 4, %bb.v ], [ 1, %bb.w ], [ 3, %bb.x ], [ 6, %bb.y ], [ %.9312.us, %bb.bg ] ; 2 uses
  %.9302 = phi i8 [ %.0293, %bb.o ], [ %.2295, %.lr.ph570.split ], [ %.6299, %.lr.ph518.split ], [ %.7300515.us, %.split536.us ], [ %.2295, %.critedge ], [ %.2295, %.split615.us ], [ %.2295, %bb.al ], [ %.2295, %bb.am ], [ %.2295, %bb.at ], [ %.6299, %.critedge2 ], [ %.2295, %bb.u ], [ %i.co, %.loopexit772 ], [ %i.cr, %.loopexit771 ], [ %.2295, %bb.v ], [ %.2295, %bb.w ], [ %.2295, %bb.x ], [ %.2295, %bb.y ], [ %.8301.us, %bb.bg ]
  %.8292 = phi i8 [ %.0284, %bb.o ], [ %.2286, %.lr.ph570.split ], [ %.7291, %.lr.ph518.split ], [ %.7291, %.split536.us ], [ %.2286, %.critedge ], [ %.2286, %.split615.us ], [ %.3287566.us763, %bb.al ], [ %.2286, %bb.am ], [ %.2286, %bb.at ], [ %.7291, %.critedge2 ], [ %.2286, %bb.u ], [ %.2286, %.loopexit772 ], [ %.2286, %.loopexit771 ], [ %.2286, %bb.v ], [ %.2286, %bb.w ], [ %i.cs, %bb.x ], [ %.2286, %bb.y ], [ %.7291, %bb.bg ]
  %.8283 = phi i8 [ %.0275, %bb.o ], [ %.2277, %.lr.ph570.split ], [ %.7282, %.lr.ph518.split ], [ %.7282, %.split536.us ], [ %.2277, %.critedge ], [ %.2277, %.split615.us ], [ %.2277, %bb.al ], [ %.3278567.us758, %bb.am ], [ %.3278567.us758, %bb.at ], [ %.7282, %.critedge2 ], [ %.2277, %bb.u ], [ %i.cn, %.loopexit772 ], [ %.2277, %.loopexit771 ], [ %.2277, %bb.v ], [ %.2277, %bb.w ], [ %.2277, %bb.x ], [ %i.ct, %bb.y ], [ %.7282, %bb.bg ]
  %.13 = phi ptr [ %i.av, %bb.o ], [ %.6255, %.lr.ph570.split ], [ %.12, %.lr.ph518.split ], [ %.12, %.split536.us ], [ %.6255, %.critedge ], [ %.6255, %.split615.us ], [ %i.ee, %bb.al ], [ %.6255, %bb.am ], [ %.6255, %bb.at ], [ %.12, %.critedge2 ], [ %.6255, %bb.u ], [ %.6255, %.loopexit772 ], [ %.6255, %.loopexit771 ], [ %.6255, %bb.v ], [ %.6255, %bb.w ], [ %.6255, %bb.x ], [ %.6255, %bb.y ], [ %.12, %bb.bg ]
  %.9 = phi ptr [ %i.ae, %bb.o ], [ %.3, %.lr.ph570.split ], [ %.7, %.lr.ph518.split ], [ %i.gr, %.split536.us ], [ %.3, %.critedge ], [ %i.bp, %.split615.us ], [ %i.di, %bb.al ], [ %i.fe, %bb.am ], [ %i.fe, %bb.at ], [ %.7, %.critedge2 ], [ %i.bp, %bb.u ], [ %i.cl, %.loopexit772 ], [ %i.cq, %.loopexit771 ], [ %i.bp, %bb.v ], [ %i.bp, %bb.w ], [ %i.bp, %bb.x ], [ %i.bp, %bb.y ], [ %i.gr, %bb.bg ]
  %i.hf = load i32, ptr %1, align 4               ; 2 uses
  %i.hg = icmp slt i32 %i.hf, 1
  %.not370 = icmp eq i32 %i.hf, 15
  %or.cond381 = or i1 %i.hg, %.not370
  br i1 %or.cond381, label %bb.bi, label %bb.bk

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

bb.b:                                             ; preds = %bb.cy, %bb.a
  %.0288 = phi ptr [ %i.g, %bb.a ], [ %.9297603, %bb.cy ] ; 8 uses
  %.0279 = phi ptr [ %i.k, %bb.a ], [ %i.pa, %bb.cy ] ; 10 uses
  %.0272 = phi i32 [ %i.q, %bb.a ], [ %i.pb, %bb.cy ] ; 9 uses
  %.0269 = phi i8 [ %i.s, %bb.a ], [ %.2271610, %bb.cy ] ; 16 uses
  %.0266 = phi i8 [ %i.u, %bb.a ], [ %.2268613, %bb.cy ] ; 30 uses
  %.0264 = phi i32 [ %i.y, %bb.a ], [ %.1265615, %bb.cy ] ; 15 uses
  %.0261 = phi i32 [ %i.aa, %bb.a ], [ 0, %bb.cy ] ; 6 uses
  %.not = icmp eq i8 %.0269, 0
  %i.ak = icmp ne i32 %.0261, 0
  %i.al = icmp sgt i32 %.0272, 0
  %or.cond5 = select i1 %i.ak, i1 %i.al, i1 false ; 2 uses
  br i1 %.not, label %bb.ax, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond5, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.aw
  %.1289 = phi ptr [ %.5293, %bb.aw ], [ %.0288, %bb.c ] ; 5 uses
  %.1280 = phi ptr [ %.5284, %bb.aw ], [ %.0279, %bb.c ] ; 18 uses
  %.1273 = phi i32 [ %.5277, %bb.aw ], [ %.0272, %bb.c ] ; 14 uses
  %.1262 = phi i32 [ 0, %bb.aw ], [ %.0261, %bb.c ] ; 2 uses
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
  br label %bb.aw

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
  br label %bb.aw

bb.k:                                             ; preds = %bb.i
  %i.az = or disjoint i32 %i.aq, 256
  br label %bb.cv

bb.l:                                             ; preds = %bb.h
  %i.ba = sub i32 %i.aq, %.0264                   ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 128
  br i1 %i.bb, label %bb.av, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = and i32 %i.aq, 63488
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.n, label %bb.ad

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
  br i1 %i.bq, label %bb.av, label %bb.r

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
  br label %bb.cv

_ZL9getWindowPKjj.exit:                           ; preds = %bb.y
  %2 = add i32 %i.bn, -56614080
  %3 = icmp ult i32 %2, 128
  br i1 %3, label %4, label %5

4:                                                ; preds = %20, %17, %14, %11, %8, %5, %_ZL9getWindowPKjj.exit
  %.029.lcssa.wide.i = phi i32 [ 249, %_ZL9getWindowPKjj.exit ], [ 250, %5 ], [ 251, %8 ], [ 252, %11 ], [ 253, %14 ], [ 254, %17 ], [ 255, %20 ]
  %.lcssa.i = phi i32 [ 192, %_ZL9getWindowPKjj.exit ], [ 592, %5 ], [ 880, %8 ], [ 1328, %11 ], [ 12352, %14 ], [ 12448, %17 ], [ 65376, %20 ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 4
  br label %bb.ac

5:                                                ; preds = %_ZL9getWindowPKjj.exit
  %6 = add i32 %i.bn, -56614480
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %4, label %8

8:                                                ; preds = %5
  %9 = add i32 %i.bn, -56614768
  %10 = icmp ult i32 %9, 128
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = add i32 %i.bn, -56615216
  %13 = icmp ult i32 %12, 128
  br i1 %13, label %4, label %14

14:                                               ; preds = %11
  %15 = add i32 %i.bn, -56626240
  %16 = icmp ult i32 %15, 128
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  %18 = add i32 %i.bn, -56626336
  %19 = icmp ult i32 %18, 128
  br i1 %19, label %4, label %20

20:                                               ; preds = %17
  %21 = add i32 %i.bn, -56679264
  %22 = icmp ult i32 %21, 128
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = icmp ult i32 %i.bo, 128
  br i1 %24, label %_ZL16getDynamicOffsetjPj.exit.a, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %i.bo, 13312
  %27 = and i32 %i.bo, -16384
  %28 = icmp eq i32 %27, 65536
  %or.cond.i = or i1 %26, %28
  %29 = add i32 %i.bn, -56732672
  %30 = icmp ult i32 %29, 12288
  %or.cond27.i = or i1 %30, %or.cond.i
  br i1 %or.cond27.i, label %31, label %bb.ab

31:                                               ; preds = %25
  %32 = and i32 %i.bo, 130944                     ; 2 uses
  store i32 %32, ptr %i.a, align 4
  %33 = lshr i32 %i.bo, 7
  br label %bb.ac

bb.ab:                                            ; preds = %25
  %34 = icmp ne i32 %i.bo, 65279
  %35 = add i32 %i.bn, -56671232
  %36 = icmp ult i32 %35, 8176
  %or.cond3.i = and i1 %34, %36
  br i1 %or.cond3.i, label %37, label %_ZL16getDynamicOffsetjPj.exit.a

37:                                               ; preds = %bb.ab
  %38 = and i32 %i.bo, 65408                      ; 2 uses
  store i32 %38, ptr %i.a, align 4
  %39 = add nsw i32 %i.bn, -56657920
  %40 = lshr i32 %39, 7
  br label %bb.ac

bb.ac:                                            ; preds = %4, %31, %37
  %41 = phi i32 [ %38, %37 ], [ %32, %31 ], [ %.lcssa.i, %4 ] ; 3 uses
  %.023.i332.ph = phi i32 [ %40, %37 ], [ %33, %31 ], [ %.029.lcssa.wide.i, %4 ]
  %i.dq = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.dr = sext i8 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.ai, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1             ; 5 uses
  %i.du = add i8 %i.dq, 1                         ; 2 uses
  %i.dv = icmp eq i8 %i.du, 8
  %spec.select.i333 = select i1 %i.dv, i8 0, i8 %i.du
  store i8 %spec.select.i333, ptr %i.aj, align 1
  %i.dw = zext i8 %i.dt to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dw
  store i32 %41, ptr %i.dx, align 4
  %42 = load i8, ptr %i.aj, align 1
  %43 = sext i8 %42 to i32                        ; 2 uses
  br label %44

44:                                               ; preds = %44, %bb.ac
  %.019.i334 = phi i32 [ %43, %bb.ac ], [ %spec.store.select.i335, %44 ] ; 2 uses
  %45 = add nsw i32 %.019.i334, -1
  %46 = icmp slt i32 %.019.i334, 1
  %spec.store.select.i335 = select i1 %46, i32 7, i32 %45 ; 4 uses
  %47 = sext i32 %spec.store.select.i335 to i64   ; 2 uses
  %48 = getelementptr inbounds i8, ptr %i.ai, i64 %47
  %49 = load i8, ptr %48, align 1
  %.not.i336 = icmp eq i8 %49, %i.dt
  br i1 %.not.i336, label %50, label %44, !llvm.loop !14

50:                                               ; preds = %44
  %51 = add nsw i32 %spec.store.select.i335, 1    ; 2 uses
  %52 = icmp eq i32 %51, 8
  %spec.store.select1.i337 = select i1 %52, i32 0, i32 %51 ; 2 uses
  %.not2021.i338 = icmp eq i32 %spec.store.select1.i337, %43
  br i1 %.not2021.i338, label %_ZL16useDynamicWindowP8SCSUDataa.exit345, label %.lr.ph.i339

.lr.ph.i339:                                      ; preds = %50, %.lr.ph.i339
  %.023.i340 = phi i32 [ %spec.store.select2.i342, %.lr.ph.i339 ], [ %spec.store.select1.i337, %50 ] ; 3 uses
  %.122.i341 = phi i32 [ %.023.i340, %.lr.ph.i339 ], [ %spec.store.select.i335, %50 ]
  %53 = sext i32 %.023.i340 to i64                ; 2 uses
  %54 = getelementptr inbounds i8, ptr %i.ai, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = sext i32 %.122.i341 to i64
  %57 = getelementptr inbounds i8, ptr %i.ai, i64 %56
  store i8 %55, ptr %57, align 1
  %58 = add nsw i32 %.023.i340, 1                 ; 2 uses
  %59 = icmp eq i32 %58, 8
  %spec.store.select2.i342 = select i1 %59, i32 0, i32 %58 ; 2 uses
  %60 = load i8, ptr %i.aj, align 1
  %61 = sext i8 %60 to i32
  %.not20.i343 = icmp eq i32 %spec.store.select2.i342, %61
  br i1 %.not20.i343, label %_ZL16useDynamicWindowP8SCSUDataa.exit345, label %.lr.ph.i339, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit345:         ; preds = %.lr.ph.i339, %50
  %.pre-phi.i344 = phi i64 [ %47, %50 ], [ %53, %.lr.ph.i339 ]
  %62 = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i344
  store i8 %i.dt, ptr %62, align 1
  %63 = zext i8 %i.dt to i32
  %64 = shl nuw nsw i32 %63, 21
  %65 = shl nuw nsw i32 %.023.i332.ph, 8
  %66 = add nsw i32 %65, -131072
  %67 = sub i32 %i.bo, %41
  %68 = or i32 %66, %64
  %69 = or i32 %68, %67
  %70 = or i32 %69, 184549504
  br label %bb.ct

_ZL16getDynamicOffsetjPj.exit.a:                  ; preds = %bb.ab, %23
  %i.dy = getelementptr inbounds nuw i8, ptr %.2281, i64 1
  store i8 15, ptr %.2281, align 1
  %i.dz = add nsw i32 %.2274, -1
  %i.ea = shl i32 %.2263, 16
  %i.eb = or disjoint i32 %i.ea, %i.bi
  br label %bb.ct

bb.ad:                                            ; preds = %bb.m
  %i.ec = icmp ult i16 %i.ap, 160
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ed = and i32 %i.aq, 127
  %i.ee = or disjoint i32 %i.ed, 512
  br label %bb.cv

bb.af:                                            ; preds = %bb.ad
  %i.ef = icmp eq i16 %i.ap, -257
  %i.eg = icmp ugt i16 %i.ap, -17
  %or.cond3 = or i1 %i.ef, %i.eg
  br i1 %or.cond3, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eh = or disjoint i32 %i.aq, 917504
  br label %bb.cu

bb.ah:                                            ; preds = %bb.af
  %i.ei = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.v, i32 noundef %i.aq) ; 6 uses
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %.not322 = icmp ult ptr %i.ao, %i.i
  %i.ek = zext nneg i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4            ; 5 uses
  br i1 %.not322, label %bb.aj, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread389

bb.aj:                                            ; preds = %bb.ai
  %i.en = load i16, ptr %i.ao, align 2            ; 4 uses
  %i.eo = zext i16 %i.en to i32                   ; 2 uses
  %i.ep = add i32 %i.em, 127
  %.not.i346 = icmp ult i32 %i.ep, %i.eo
  br i1 %.not.i346, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not7.i = icmp ugt i32 %i.em, %i.eo
  br i1 %.not7.i, label %bb.al, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread389

bb.al:                                            ; preds = %bb.ak
  %i.eq = icmp ult i16 %i.en, 128
  br i1 %i.eq, label %_ZL24isInOffsetWindowOrDirectjj.exit, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread

_ZL24isInOffsetWindowOrDirectjj.exit:             ; preds = %bb.al
  %i.er = icmp samesign ult i16 %i.en, 32
  %i.es = zext nneg i16 %i.en to i64
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, 9729
  %i.ev = icmp eq i64 %i.eu, 0
  %.not414 = select i1 %i.er, i1 %i.ev, i1 false
  br i1 %.not414, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread389

_ZL24isInOffsetWindowOrDirectjj.exit.thread389:   ; preds = %bb.ai, %bb.ak, %_ZL24isInOffsetWindowOrDirectjj.exit
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.ei)
  %narrow325 = add nuw nsw i8 %i.ei, 16
  %i.ew = zext nneg i8 %narrow325 to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = sub i32 %i.aq, %i.em
  %i.ez = or i32 %i.ex, %i.ey
  %i.fa = or i32 %i.ez, 128
  br label %bb.cv

_ZL24isInOffsetWindowOrDirectjj.exit.thread:      ; preds = %bb.al, %bb.aj, %_ZL24isInOffsetWindowOrDirectjj.exit
  %narrow324 = add nuw nsw i8 %i.ei, 1
  %i.fb = zext nneg i8 %narrow324 to i32
  %i.fc = shl nuw nsw i32 %i.fb, 8
  %i.fd = sub i32 %i.aq, %i.em
  %i.fe = or i32 %i.fc, %i.fd
  %i.ff = or i32 %i.fe, 128
  br label %bb.cv

bb.am:                                            ; preds = %bb.ah
  %i.fg = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull @_ZL13staticOffsets, i32 noundef %i.aq) ; 3 uses
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %narrow321 = add nuw nsw i8 %i.fg, 1
  %i.fi = zext nneg i8 %narrow321 to i32
  %i.fj = shl nuw nsw i32 %i.fi, 8
  %i.fk = zext nneg i8 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @_ZL13staticOffsets, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = sub i32 %i.aq, %i.fm
  %i.fo = or i32 %i.fn, %i.fj
  br label %bb.cv

bb.ao:                                            ; preds = %bb.am
  %i.fp = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %i.aq, ptr noundef %i.a) ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, -1
  br i1 %i.fq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fr = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.fs = sext i8 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.ai, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1             ; 4 uses
  %i.fv = add i8 %i.fr, 1                         ; 2 uses
  %i.fw = icmp eq i8 %i.fv, 8
  %spec.select.i347 = select i1 %i.fw, i8 0, i8 %i.fv
  store i8 %spec.select.i347, ptr %i.aj, align 1
  %i.fx = load i32, ptr %i.a, align 4             ; 3 uses
  %i.fy = zext i8 %i.fu to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.fy
  store i32 %i.fx, ptr %i.fz, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.fu)
  %i.ga = zext i8 %i.fu to i32
  %i.gb = shl nuw nsw i32 %i.ga, 16
  %i.gc = add nuw nsw i32 %i.gb, 1572864
  %i.gd = shl nuw nsw i32 %i.fp, 8
  %i.ge = sub i32 %i.aq, %i.fx
  %i.gf = or i32 %i.gd, %i.gc
  %i.gg = or i32 %i.gf, %i.ge
  %i.gh = or i32 %i.gg, 128
  br label %bb.cu

bb.aq:                                            ; preds = %bb.ao
  %i.gi = add i16 %i.ap, -13312
  %i.gj = icmp ult i16 %i.gi, -23552
  br i1 %i.gj, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not320 = icmp ult ptr %i.ao, %i.i
  br i1 %.not320, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gk = load i16, ptr %i.ao, align 2
  %i.gl = add i16 %i.gk, -13312
  %i.gm = icmp ult i16 %i.gl, -23552
  br i1 %i.gm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gn = or disjoint i32 %i.aq, 983040
  br label %bb.cu

bb.au:                                            ; preds = %bb.as, %bb.aq
  %i.go = or disjoint i32 %i.aq, 917504
  br label %bb.cu

bb.av:                                            ; preds = %bb.q, %bb.l
  %.sink = phi i32 [ %i.ba, %bb.l ], [ %i.bp, %bb.q ]
  %.2281.sink = phi ptr [ %.1280, %bb.l ], [ %.2281, %bb.q ] ; 2 uses
  %.3291 = phi ptr [ %i.ao, %bb.l ], [ %i.bl, %bb.q ]
  %.3275.in = phi i32 [ %.1273, %bb.l ], [ %.2274, %bb.q ]
  %i.gp = trunc nuw nsw i32 %.sink to i8
  %i.gq = or disjoint i8 %i.gp, -128
  store i8 %i.gq, ptr %.2281.sink, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.j, %bb.av, %bb.g
  %.5293 = phi ptr [ %i.ao, %bb.g ], [ %.3291, %bb.av ], [ %i.ao, %bb.j ]
  %.2281.pn.pn.pn = phi ptr [ %.1280, %bb.g ], [ %.2281.sink, %bb.av ], [ %.1280, %bb.j ]
  %.5277.in = phi i32 [ %.1273, %bb.g ], [ %.3275.in, %bb.av ], [ %.1273, %bb.j ]
  %.5284 = getelementptr inbounds nuw i8, ptr %.2281.pn.pn.pn, i64 1
  %.5277 = add nsw i32 %.5277.in, -1
  br label %bb.d, !llvm.loop !16

bb.ax:                                            ; preds = %bb.b
  br i1 %or.cond5, label %bb.bn, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.gr = icmp ult ptr %.0288, %i.i
  br i1 %i.gr, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.gs = icmp slt i32 %.0272, 1
  br i1 %i.gs, label %.loopexit.sink.split, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.preheader
  %i.gt = getelementptr inbounds nuw i8, ptr %.0288, i64 2 ; 6 uses
  %i.gu = load i16, ptr %.0288, align 2           ; 4 uses
  %i.gv = zext i16 %i.gu to i32                   ; 3 uses
  %i.gw = add nsw i32 %i.gv, -13312               ; 2 uses
  %i.gx = icmp ult i32 %i.gw, 41984
  br i1 %i.gx, label %bb.az, label %.loopexit555

bb.az:                                            ; preds = %bb.ay
  %.not319.peel = icmp eq i32 %.0272, 1
  br i1 %.not319.peel, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gy = lshr i16 %i.gu, 8
  %i.gz = trunc nuw i16 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.0279, i64 1
  store i8 %i.gz, ptr %.0279, align 1
  %i.hb = trunc i16 %i.gu to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %.0279, i64 2 ; 3 uses
  store i8 %i.hb, ptr %i.ha, align 1
  %i.hd = icmp ult ptr %i.gt, %i.i
  br i1 %i.hd, label %.lr.ph.preheader714, label %.loopexit
end_hunk_0
begin_hunk_1_@_ZL16_SCSUFromUnicodeP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.lq = sext i8 %i.lp to i32
  %.not20.i361 = icmp eq i32 %spec.store.select2.i360, %i.lq
  br i1 %.not20.i361, label %_ZL16useDynamicWindowP8SCSUDataa.exit363, label %.lr.ph.i357, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit363:         ; preds = %.lr.ph.i357, %bb.ca
  %.pre-phi.i362 = phi i64 [ %i.ld, %bb.ca ], [ %i.li, %.lr.ph.i357 ]
  %i.lr = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i362
  store i8 %.06.i350.ph, ptr %i.lr, align 1
  %i.ls = zext nneg i8 %.06.i350.ph to i32
  %i.lt = shl nuw nsw i32 %i.ls, 8
  %i.lu = sub i32 %i.jt, %i.ky
  %i.lv = or i32 %i.lt, %i.lu
  %i.lw = or i32 %i.lv, 57472
  br label %bb.cv

_ZL9getWindowPKjj.exit351:                        ; preds = %bb.bw, %bb.bx
  %i.lx = icmp ult ptr %i.jq, %i.i
  br i1 %i.lx, label %bb.cb, label %_ZL16getDynamicOffsetjPj.exit370

bb.cb:                                            ; preds = %_ZL9getWindowPKjj.exit351
  %i.ly = load i16, ptr %i.jq, align 2
  %i.lz = trunc i32 %.4 to i16
  %i.ma = icmp eq i16 %i.ly, %i.lz
  br i1 %i.ma, label %bb.cc, label %_ZL16getDynamicOffsetjPj.exit370

bb.cc:                                            ; preds = %bb.cb
  %i.mb = add i32 %i.js, -56614080
  %i.mc = icmp ult i32 %i.mb, 128
  br i1 %i.mc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %.029.lcssa.wide.i368 = phi i32 [ 249, %bb.cc ], [ 250, %bb.ce ], [ 251, %bb.cf ], [ 252, %bb.cg ], [ 253, %bb.ch ], [ 254, %bb.ci ], [ 255, %bb.cj ]
  %.lcssa.i369 = phi i32 [ 192, %bb.cc ], [ 592, %bb.ce ], [ 880, %bb.cf ], [ 1328, %bb.cg ], [ 12352, %bb.ch ], [ 12448, %bb.ci ], [ 65376, %bb.cj ] ; 2 uses
  store i32 %.lcssa.i369, ptr %i.a, align 4
  br label %bb.cp

bb.ce:                                            ; preds = %bb.cc
  %i.md = add i32 %i.js, -56614480
  %i.me = icmp ult i32 %i.md, 128
  br i1 %i.me, label %bb.cd, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mf = add i32 %i.js, -56614768
  %i.mg = icmp ult i32 %i.mf, 128
  br i1 %i.mg, label %bb.cd, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mh = add i32 %i.js, -56615216
  %i.mi = icmp ult i32 %i.mh, 128
  br i1 %i.mi, label %bb.cd, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mj = add i32 %i.js, -56626240
  %i.mk = icmp ult i32 %i.mj, 128
  br i1 %i.mk, label %bb.cd, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ml = add i32 %i.js, -56626336
  %i.mm = icmp ult i32 %i.ml, 128
  br i1 %i.mm, label %bb.cd, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mn = add i32 %i.js, -56679264
  %i.mo = icmp ult i32 %i.mn, 128
  br i1 %i.mo, label %bb.cd, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.mp = icmp ult i32 %i.jt, 128
  br i1 %i.mp, label %_ZL16getDynamicOffsetjPj.exit370, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mq = icmp ult i32 %i.jt, 13312
  %i.mr = and i32 %i.jt, -16384
  %i.ms = icmp eq i32 %i.mr, 65536
  %or.cond.i364 = or i1 %i.mq, %i.ms
  %i.mt = add i32 %i.js, -56732672
  %i.mu = icmp ult i32 %i.mt, 12288
  %or.cond27.i365 = or i1 %i.mu, %or.cond.i364
  br i1 %or.cond27.i365, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.mv = and i32 %i.jt, 130944                   ; 2 uses
  store i32 %i.mv, ptr %i.a, align 4
  %i.mw = lshr i32 %i.jt, 7
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.mx = icmp ne i32 %i.jt, 65279
  %i.my = add i32 %i.js, -56671232
  %i.mz = icmp ult i32 %i.my, 8176
  %or.cond3.i366 = and i1 %i.mx, %i.mz
  br i1 %or.cond3.i366, label %bb.co, label %_ZL16getDynamicOffsetjPj.exit370

bb.co:                                            ; preds = %bb.cn
  %i.na = and i32 %i.jt, 65408                    ; 2 uses
  store i32 %i.na, ptr %i.a, align 4
  %i.nb = add nsw i32 %i.js, -56657920
  %i.nc = lshr i32 %i.nb, 7
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cd, %bb.cm, %bb.co
  %i.nd = phi i32 [ %i.na, %bb.co ], [ %i.mv, %bb.cm ], [ %.lcssa.i369, %bb.cd ] ; 3 uses
  %.023.i367.ph = phi i32 [ %i.nc, %bb.co ], [ %i.mw, %bb.cm ], [ %.029.lcssa.wide.i368, %bb.cd ]
  %i.ne = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.nf = sext i8 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %i.ai, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1             ; 5 uses
  %i.ni = add i8 %i.ne, 1                         ; 2 uses
  %i.nj = icmp eq i8 %i.ni, 8
  %spec.select.i371 = select i1 %i.nj, i8 0, i8 %i.ni
  store i8 %spec.select.i371, ptr %i.aj, align 1
  %i.nk = zext i8 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.nk
  store i32 %i.nd, ptr %i.nl, align 4
  %i.nm = load i8, ptr %i.aj, align 1
  %i.nn = sext i8 %i.nm to i32                    ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cq, %bb.cp
  %.019.i372 = phi i32 [ %i.nn, %bb.cp ], [ %spec.store.select.i373, %bb.cq ] ; 2 uses
  %i.no = add nsw i32 %.019.i372, -1
  %i.np = icmp slt i32 %.019.i372, 1
  %spec.store.select.i373 = select i1 %i.np, i32 7, i32 %i.no ; 4 uses
  %i.nq = sext i32 %spec.store.select.i373 to i64 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.ai, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1
  %.not.i374 = icmp eq i8 %i.ns, %i.nh
  br i1 %.not.i374, label %bb.cr, label %bb.cq, !llvm.loop !14

bb.cr:                                            ; preds = %bb.cq
  %i.nt = add nsw i32 %spec.store.select.i373, 1  ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 8
  %spec.store.select1.i375 = select i1 %i.nu, i32 0, i32 %i.nt ; 2 uses
  %.not2021.i376 = icmp eq i32 %spec.store.select1.i375, %i.nn
  br i1 %.not2021.i376, label %_ZL16useDynamicWindowP8SCSUDataa.exit383, label %.lr.ph.i377

.lr.ph.i377:                                      ; preds = %bb.cr, %.lr.ph.i377
  %.023.i378 = phi i32 [ %spec.store.select2.i380, %.lr.ph.i377 ], [ %spec.store.select1.i375, %bb.cr ] ; 3 uses
  %.122.i379 = phi i32 [ %.023.i378, %.lr.ph.i377 ], [ %spec.store.select.i373, %bb.cr ]
  %i.nv = sext i32 %.023.i378 to i64              ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %i.ai, i64 %i.nv
  %i.nx = load i8, ptr %i.nw, align 1
  %i.ny = sext i32 %.122.i379 to i64
  %i.nz = getelementptr inbounds i8, ptr %i.ai, i64 %i.ny
  store i8 %i.nx, ptr %i.nz, align 1
  %i.oa = add nsw i32 %.023.i378, 1               ; 2 uses
  %i.ob = icmp eq i32 %i.oa, 8
  %spec.store.select2.i380 = select i1 %i.ob, i32 0, i32 %i.oa ; 2 uses
  %i.oc = load i8, ptr %i.aj, align 1
  %i.od = sext i8 %i.oc to i32
  %.not20.i381 = icmp eq i32 %spec.store.select2.i380, %i.od
  br i1 %.not20.i381, label %_ZL16useDynamicWindowP8SCSUDataa.exit383, label %.lr.ph.i377, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit383:         ; preds = %.lr.ph.i377, %bb.cr
  %.pre-phi.i382 = phi i64 [ %i.nq, %bb.cr ], [ %i.nv, %.lr.ph.i377 ]
  %i.oe = getelementptr inbounds i8, ptr %i.ai, i64 %.pre-phi.i382
  store i8 %i.nh, ptr %i.oe, align 1
  %i.of = zext i8 %i.nh to i32
  %i.og = shl nuw nsw i32 %i.of, 21
  %i.oh = shl nuw nsw i32 %.023.i367.ph, 8
  %i.oi = add nuw nsw i32 %i.oh, 268304384
  %i.oj = sub i32 %i.jt, %i.nd
  %i.ok = or i32 %i.oi, %i.og
  %i.ol = or i32 %i.ok, %i.oj
  %i.om = or i32 %i.ol, -251658112
  br label %bb.ct

_ZL16getDynamicOffsetjPj.exit370:                 ; preds = %bb.cn, %bb.ck, %bb.cb, %_ZL9getWindowPKjj.exit351
  %i.on = shl i32 %.4, 16
  %i.oo = or disjoint i32 %i.on, %i.jn
  br label %bb.ct

bb.cs:                                            ; preds = %bb.bl
  %i.op = or disjoint i32 %.lcssa507, 15728640
  br label %bb.cu

.loopexit.sink.split:                             ; preds = %bb.bm, %bb.bo, %.lr.ph.preheader, %bb.n, %bb.p, %bb.e, %.lr.ph.preheader714, %.lr.ph, %bb.dg, %bb.dd
  %.sink713 = phi i32 [ 15, %bb.dg ], [ 15, %.lr.ph ], [ 15, %bb.dd ], [ 15, %bb.e ], [ 12, %bb.bo ], [ 12, %bb.bm ], [ 12, %bb.p ], [ 15, %.lr.ph.preheader ], [ 12, %bb.n ], [ 15, %.lr.ph.preheader714 ]
  %.8296.ph = phi ptr [ %.9297405, %bb.dg ], [ %i.hg, %.lr.ph ], [ %.9297405, %bb.dd ], [ %.1289, %bb.e ], [ %.7295, %bb.bo ], [ %.lcssa513, %bb.bm ], [ %.2290, %bb.p ], [ %.0288, %.lr.ph.preheader ], [ %i.ao, %bb.n ], [ %i.gt, %.lr.ph.preheader714 ]
  %.8287.ph = phi ptr [ %i.qb, %bb.dg ], [ %i.hp, %.lr.ph ], [ %.9406, %bb.dd ], [ %.1280, %bb.e ], [ %.7286, %bb.bo ], [ %.6285477.lcssa495, %bb.bm ], [ %.2281, %bb.p ], [ %.0279, %.lr.ph.preheader ], [ %.1280, %bb.n ], [ %i.hc, %.lr.ph.preheader714 ]
  %.1270.ph = phi i8 [ %.2271408, %bb.dg ], [ 0, %.lr.ph ], [ %.2271408, %bb.dd ], [ %.0269, %bb.e ], [ 0, %bb.bo ], [ 0, %bb.bm ], [ %.0269, %bb.p ], [ 0, %.lr.ph.preheader ], [ %.0269, %bb.n ], [ 0, %.lr.ph.preheader714 ]
  %.1267.ph = phi i8 [ %.2268409, %bb.dg ], [ %.0266, %.lr.ph ], [ %.2268409, %bb.dd ], [ %.0266, %.lr.ph.preheader714 ], [ %.0266, %bb.e ], [ %.0266, %bb.p ], [ %.0266, %bb.n ], [ %.0266, %.lr.ph.preheader ], [ %.0266, %bb.bo ], [ %.0266, %bb.bm ]
  %.5.ph = phi i32 [ 0, %bb.dg ], [ 0, %.lr.ph ], [ %.8407, %bb.dd ], [ %.1262, %bb.e ], [ %.4, %bb.bo ], [ %.lcssa507, %bb.bm ], [ %.2263, %bb.p ], [ %.0261, %.lr.ph.preheader ], [ %i.aq, %bb.n ], [ 0, %.lr.ph.preheader714 ]
  store i32 %.sink713, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.d, %bb.bn, %.preheader, %bb.ba, %bb.bc, %.loopexit.sink.split
  %.8296 = phi ptr [ %i.hg, %bb.bc ], [ %.8296.ph, %.loopexit.sink.split ], [ %.0288, %.preheader ], [ %.7295, %bb.bn ], [ %.2290, %bb.o ], [ %.1289, %bb.d ], [ %i.gt, %bb.ba ]
  %.8287 = phi ptr [ %i.hp, %bb.bc ], [ %.8287.ph, %.loopexit.sink.split ], [ %.0279, %.preheader ], [ %.7286, %bb.bn ], [ %.2281, %bb.o ], [ %.1280, %bb.d ], [ %i.hc, %bb.ba ]
  %.1270 = phi i8 [ 0, %bb.bc ], [ %.1270.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.bn ], [ %.0269, %bb.o ], [ %.0269, %bb.d ], [ 0, %bb.ba ]
  %.1267 = phi i8 [ %.0266, %bb.bc ], [ %.1267.ph, %.loopexit.sink.split ], [ %.0266, %bb.ba ], [ %.0266, %.preheader ], [ %.0266, %bb.bn ], [ %.0266, %bb.d ], [ %.0266, %bb.o ]
  %.5 = phi i32 [ 0, %bb.bc ], [ %.5.ph, %.loopexit.sink.split ], [ %.0261, %.preheader ], [ %.4, %bb.bn ], [ %.2263, %bb.o ], [ %.1262, %bb.d ], [ 0, %bb.ba ]
  store i8 %.1270, ptr %i.r, align 4
  store i8 %.1267, ptr %i.t, align 1
  store i32 %.5, ptr %i.z, align 4
  store ptr %.8296, ptr %i.f, align 8
  store ptr %.8287, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.ct:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit370, %_ZL16useDynamicWindowP8SCSUDataa.exit383, %_ZL16getDynamicOffsetjPj.exit.a, %_ZL16useDynamicWindowP8SCSUDataa.exit345
  %.9297.jt4 = phi ptr [ %i.jq, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %i.bl, %_ZL16getDynamicOffsetjPj.exit.a ], [ %i.bl, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %i.jq, %_ZL16getDynamicOffsetjPj.exit370 ] ; 2 uses
  %.9.jt4 = phi ptr [ %.7286, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %i.dy, %_ZL16getDynamicOffsetjPj.exit.a ], [ %.2281, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.7286, %_ZL16getDynamicOffsetjPj.exit370 ] ; 3 uses
  %.8.jt4 = phi i32 [ %.7, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %i.dz, %_ZL16getDynamicOffsetjPj.exit.a ], [ %.2274, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.7, %_ZL16getDynamicOffsetjPj.exit370 ] ; 3 uses
  %.2271.jt4 = phi i8 [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ 0, %_ZL16getDynamicOffsetjPj.exit.a ], [ %.0269, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ 0, %_ZL16getDynamicOffsetjPj.exit370 ] ; 2 uses
  %.2268.jt4 = phi i8 [ %i.nh, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %.0266, %_ZL16getDynamicOffsetjPj.exit.a ], [ %i.dt, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.0266, %_ZL16getDynamicOffsetjPj.exit370 ] ; 2 uses
  %.1265.jt4 = phi i32 [ %i.nd, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %.0264, %_ZL16getDynamicOffsetjPj.exit.a ], [ %41, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %.0264, %_ZL16getDynamicOffsetjPj.exit370 ]
  %.6.jt4 = phi i32 [ %i.om, %_ZL16useDynamicWindowP8SCSUDataa.exit383 ], [ %i.eb, %_ZL16getDynamicOffsetjPj.exit.a ], [ %70, %_ZL16useDynamicWindowP8SCSUDataa.exit345 ], [ %i.oo, %_ZL16getDynamicOffsetjPj.exit370 ] ; 3 uses
  %.not327.jt4 = icmp samesign ult i32 %.8.jt4, 4
  br i1 %.not327.jt4, label %.thread, label %bb.cw

bb.cu:                                            ; preds = %bb.bk, %bb.cs, %bb.au, %bb.at, %bb.ap, %bb.ag
  %.9297.jt3 = phi ptr [ %i.ao, %bb.ap ], [ %.lcssa513, %bb.bk ], [ %i.ao, %bb.ag ], [ %i.ao, %bb.at ], [ %i.ao, %bb.au ], [ %.lcssa513, %bb.cs ] ; 2 uses
  %.9.jt3 = phi ptr [ %.1280, %bb.ap ], [ %.6285477.lcssa495, %bb.bk ], [ %.1280, %bb.ag ], [ %.1280, %bb.at ], [ %.1280, %bb.au ], [ %.6285477.lcssa495, %bb.cs ] ; 2 uses
  %.8.jt3 = phi i32 [ %.1273, %bb.ap ], [ %.6278478.lcssa498, %bb.bk ], [ %.1273, %bb.ag ], [ %.1273, %bb.at ], [ %.1273, %bb.au ], [ %.6278478.lcssa498, %bb.cs ] ; 3 uses
  %.2271.jt3 = phi i8 [ %.0269, %bb.ap ], [ 1, %bb.bk ], [ %.0269, %bb.ag ], [ 0, %bb.at ], [ %.0269, %bb.au ], [ 0, %bb.cs ] ; 2 uses
  %.2268.jt3 = phi i8 [ %i.fu, %bb.ap ], [ %i.iu, %bb.bk ], [ %.0266, %bb.ag ], [ %.0266, %bb.at ], [ %.0266, %bb.au ], [ %.0266, %bb.cs ] ; 2 uses
  %.1265.jt3 = phi i32 [ %i.fx, %bb.ap ], [ %i.ix, %bb.bk ], [ %.0264, %bb.ag ], [ %.0264, %bb.at ], [ %.0264, %bb.au ], [ %.0264, %bb.cs ]
  %.6.jt3 = phi i32 [ %i.gh, %bb.ap ], [ %i.jh, %bb.bk ], [ %i.eh, %bb.ag ], [ %i.gn, %bb.at ], [ %i.go, %bb.au ], [ %i.op, %bb.cs ] ; 2 uses
  %.not327.jt3 = icmp samesign ult i32 %.8.jt3, 3
  br i1 %.not327.jt3, label %.thread, label %bb.cx

bb.cv:                                            ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.be, %_ZL16useDynamicWindowP8SCSUDataa.exit363, %_ZL16useDynamicWindowP8SCSUDataa.exit, %bb.an, %_ZL24isInOffsetWindowOrDirectjj.exit.thread, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389, %bb.ae, %bb.k
  %.9297.jt2 = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %bb.ae ], [ %.lcssa513, %bb.be ], [ %i.ao, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %i.ao, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.ao, %bb.an ], [ %.lcssa513, %bb.bg ], [ %.lcssa513, %bb.bi ], [ %i.jq, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %i.bl, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa513, %bb.bj ] ; 2 uses
  %.9.jt2 = phi ptr [ %.1280, %bb.k ], [ %.1280, %bb.ae ], [ %.6285477.lcssa495, %bb.be ], [ %.1280, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %.1280, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1280, %bb.an ], [ %.6285477.lcssa495, %bb.bg ], [ %.6285477.lcssa495, %bb.bi ], [ %.7286, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %.2281, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6285477.lcssa495, %bb.bj ] ; 2 uses
  %.8.jt2 = phi i32 [ %.1273, %bb.k ], [ %.1273, %bb.ae ], [ %.6278478.lcssa498, %bb.be ], [ %.1273, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %.1273, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1273, %bb.an ], [ %.6278478.lcssa498, %bb.bg ], [ %.6278478.lcssa498, %bb.bi ], [ %.7, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %.2274, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6278478.lcssa498, %bb.bj ] ; 2 uses
  %.2271.jt2 = phi i8 [ %.0269, %bb.k ], [ %.0269, %bb.ae ], [ 0, %bb.be ], [ %.0269, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %.0269, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0269, %bb.an ], [ 1, %bb.bg ], [ 1, %bb.bi ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %.0269, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ 0, %bb.bj ] ; 2 uses
  %.2268.jt2 = phi i8 [ %.0266, %bb.k ], [ %.0266, %bb.ae ], [ %.0266, %bb.be ], [ %i.ei, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %.0266, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0266, %bb.an ], [ %.0266, %bb.bg ], [ %i.if, %bb.bi ], [ %.06.i350.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %.06.i.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0266, %bb.bj ] ; 2 uses
  %.1265.jt2 = phi i32 [ %.0264, %bb.k ], [ %.0264, %bb.ae ], [ %.0264, %bb.be ], [ %i.em, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %.0264, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0264, %bb.an ], [ %.0264, %bb.bg ], [ %i.ij, %bb.bi ], [ %i.ky, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %i.cr, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0264, %bb.bj ]
  %.6.jt2 = phi i32 [ %i.az, %bb.k ], [ %i.ee, %bb.ae ], [ %.lcssa507, %bb.be ], [ %i.fa, %_ZL24isInOffsetWindowOrDirectjj.exit.thread389 ], [ %i.ff, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.fo, %bb.an ], [ %i.ie, %bb.bg ], [ %i.io, %bb.bi ], [ %i.lw, %_ZL16useDynamicWindowP8SCSUDataa.exit363 ], [ %i.dp, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa507, %bb.bj ] ; 2 uses
  %.not327.jt2 = icmp samesign ult i32 %.8.jt2, 2
  br i1 %.not327.jt2, label %.thread, label %bb.cy

bb.cw:                                            ; preds = %bb.ct
  %i.oq = lshr i32 %.6.jt4, 24
  %i.or = trunc nuw i32 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %.9.jt4, i64 1
  store i8 %i.or, ptr %.9.jt4, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cu, %bb.cw
  %.0260620.neg = phi i32 [ -3, %bb.cu ], [ -4, %bb.cw ]
  %.6617 = phi i32 [ %.6.jt3, %bb.cu ], [ %.6.jt4, %bb.cw ] ; 2 uses
  %.1265614 = phi i32 [ %.1265.jt3, %bb.cu ], [ %.1265.jt4, %bb.cw ]
  %.2268612 = phi i8 [ %.2268.jt3, %bb.cu ], [ %.2268.jt4, %bb.cw ]
  %.2271609 = phi i8 [ %.2271.jt3, %bb.cu ], [ %.2271.jt4, %bb.cw ]
  %.8606 = phi i32 [ %.8.jt3, %bb.cu ], [ %.8.jt4, %bb.cw ]
  %.9297602 = phi ptr [ %.9297.jt3, %bb.cu ], [ %.9297.jt4, %bb.cw ]
  %.10 = phi ptr [ %.9.jt3, %bb.cu ], [ %i.os, %bb.cw ] ; 2 uses
  %i.ot = lshr i32 %.6617, 16
  %i.ou = trunc i32 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 %i.ou, ptr %.10, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cv, %bb.cx
  %.0260621.neg = phi i32 [ -2, %bb.cv ], [ %.0260620.neg, %bb.cx ]
  %.6618 = phi i32 [ %.6.jt2, %bb.cv ], [ %.6617, %bb.cx ] ; 2 uses
  %.1265615 = phi i32 [ %.1265.jt2, %bb.cv ], [ %.1265614, %bb.cx ]
  %.2268613 = phi i8 [ %.2268.jt2, %bb.cv ], [ %.2268612, %bb.cx ]
  %.2271610 = phi i8 [ %.2271.jt2, %bb.cv ], [ %.2271609, %bb.cx ]
  %.8607 = phi i32 [ %.8.jt2, %bb.cv ], [ %.8606, %bb.cx ]
  %.9297603 = phi ptr [ %.9297.jt2, %bb.cv ], [ %.9297602, %bb.cx ]
  %.11 = phi ptr [ %.9.jt2, %bb.cv ], [ %i.ov, %bb.cx ] ; 3 uses
  %i.ow = lshr i32 %.6618, 8
  %i.ox = trunc i32 %i.ow to i8
  store i8 %i.ox, ptr %.11, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.oz = trunc i32 %.6618 to i8
  store i8 %i.oz, ptr %i.oy, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.11, i64 2
  %i.pb = add i32 %.0260621.neg, %.8607
  br label %bb.b

.thread:                                          ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.az, %bb.bb
  %.0260411 = phi i32 [ 2, %bb.bb ], [ 2, %bb.cv ], [ 3, %bb.cu ], [ 4, %bb.ct ], [ 2, %bb.az ]
  %.6410 = phi i32 [ %i.hi, %bb.bb ], [ %.6.jt2, %bb.cv ], [ %.6.jt3, %bb.cu ], [ %.6.jt4, %bb.ct ], [ %i.gv, %bb.az ] ; 5 uses
  %.2268409 = phi i8 [ %.0266, %bb.bb ], [ %.2268.jt2, %bb.cv ], [ %.2268.jt3, %bb.cu ], [ %.2268.jt4, %bb.ct ], [ %.0266, %bb.az ] ; 2 uses
  %.2271408 = phi i8 [ 0, %bb.bb ], [ %.2271.jt2, %bb.cv ], [ %.2271.jt3, %bb.cu ], [ %.2271.jt4, %bb.ct ], [ 0, %bb.az ] ; 2 uses
  %.8407 = phi i32 [ 1, %bb.bb ], [ 1, %bb.cv ], [ %.8.jt3, %bb.cu ], [ %.8.jt4, %bb.ct ], [ 1, %bb.az ] ; 3 uses
  %.9406 = phi ptr [ %.6285477757, %bb.bb ], [ %.9.jt2, %bb.cv ], [ %.9.jt3, %bb.cu ], [ %.9.jt4, %bb.ct ], [ %.0279, %bb.az ] ; 5 uses
  %.9297405 = phi ptr [ %i.hg, %bb.bb ], [ %.9297.jt2, %bb.cv ], [ %.9297.jt3, %bb.cu ], [ %.9297.jt4, %bb.ct ], [ %i.gt, %bb.az ] ; 2 uses
  %i.pc = sub nsw i32 %.0260411, %.8407           ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  switch i32 %i.pc, label %bb.dd [
    i32 4, label %bb.cz
    i32 3, label %bb.da
    i32 2, label %bb.db
    i32 1, label %bb.dc
  ]

bb.cz:                                            ; preds = %.thread
  %i.pe = lshr i32 %.6410, 24
  %i.pf = trunc nuw i32 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  store i8 %i.pf, ptr %i.pd, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.thread
  %.0 = phi ptr [ %i.pg, %bb.cz ], [ %i.pd, %.thread ] ; 2 uses
  %i.ph = lshr i32 %.6410, 16
  %i.pi = trunc i32 %i.ph to i8
  %i.pj = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.pi, ptr %.0, align 1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.thread
  %.1 = phi ptr [ %i.pj, %bb.da ], [ %i.pd, %.thread ] ; 2 uses
  %i.pk = lshr i32 %.6410, 8
  %i.pl = trunc i32 %i.pk to i8
  %i.pm = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.pl, ptr %.1, align 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.thread
  %.2 = phi ptr [ %i.pm, %bb.db ], [ %i.pd, %.thread ]
  %i.pn = trunc i32 %.6410 to i8
  store i8 %i.pn, ptr %.2, align 1
  br label %bb.dd

bb.dd:                                            ; preds = %.thread, %bb.dc
  %i.po = trunc nsw i32 %i.pc to i8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 %i.po, ptr %i.pp, align 1
  %i.pq = icmp eq i32 %i.pc, 4
  %i.pr = shl nsw i32 %i.pc, 3
  %i.ps = lshr i32 %.6410, %i.pr
  %i.pt = select i1 %i.pq, i32 0, i32 %i.ps       ; 3 uses
  switch i32 %.8407, label %.unreachabledefault [
    i32 3, label %bb.de
    i32 2, label %bb.df
    i32 1, label %bb.dg
    i32 0, label %.loopexit.sink.split
  ]

bb.de:                                            ; preds = %bb.dd
  %i.pu = lshr i32 %i.pt, 16
  %i.pv = trunc i32 %i.pu to i8
  %i.pw = getelementptr inbounds nuw i8, ptr %.9406, i64 1
  store i8 %i.pv, ptr %.9406, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.14 = phi ptr [ %i.pw, %bb.de ], [ %.9406, %bb.dd ] ; 2 uses
  %i.px = lshr i32 %i.pt, 8
  %i.py = trunc i32 %i.px to i8
  %i.pz = getelementptr inbounds nuw i8, ptr %.14, i64 1
  store i8 %i.py, ptr %.14, align 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dd, %bb.df
  %.15 = phi ptr [ %i.pz, %bb.df ], [ %.9406, %bb.dd ] ; 2 uses
  %i.qa = trunc i32 %i.pt to i8
  %i.qb = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.qa, ptr %.15, align 1
  br label %.loopexit.sink.split

.unreachabledefault:                              ; preds = %bb.dd
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

bb.b:                                             ; preds = %bb.dn, %bb.a
  %.0380 = phi ptr [ %i.g, %bb.a ], [ %.9389762, %bb.dn ] ; 8 uses
  %.0360 = phi ptr [ %i.k, %bb.a ], [ %.16376, %bb.dn ] ; 10 uses
  %.0351 = phi i32 [ %i.q, %bb.a ], [ %i.qi, %bb.dn ] ; 9 uses
  %.0342 = phi ptr [ %i.s, %bb.a ], [ %.19, %bb.dn ] ; 11 uses
  %.0339 = phi i8 [ %i.u, %bb.a ], [ %.2341776, %bb.dn ] ; 16 uses
  %.0336 = phi i8 [ %i.w, %bb.a ], [ %.2338781, %bb.dn ] ; 30 uses
  %.0334 = phi i32 [ %i.aa, %bb.a ], [ %.1335785, %bb.dn ] ; 15 uses
  %.0327 = phi i32 [ %i.ac, %bb.a ], [ 0, %bb.dn ] ; 6 uses
  %.0321 = phi i32 [ %i.ae, %bb.a ], [ %.8795, %bb.dn ] ; 7 uses
  %.0318 = phi i32 [ 0, %bb.a ], [ %.8795, %bb.dn ] ; 4 uses
  %.not = icmp eq i8 %.0339, 0
  %i.ao = icmp ne i32 %.0327, 0
  %i.ap = icmp sgt i32 %.0351, 0
  %or.cond5 = select i1 %i.ao, i1 %i.ap, i1 false ; 2 uses
  br i1 %.not, label %bb.be, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond5, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.bd
  %.1381 = phi ptr [ %.5385, %bb.bd ], [ %.0380, %bb.c ] ; 5 uses
  %.1361 = phi ptr [ %.5365, %bb.bd ], [ %.0360, %bb.c ] ; 22 uses
  %.1352 = phi i32 [ %.5356, %bb.bd ], [ %.0351, %bb.c ] ; 17 uses
  %.1343 = phi ptr [ %.10, %bb.bd ], [ %.0342, %bb.c ] ; 22 uses
  %.1328 = phi i32 [ 0, %bb.bd ], [ %.0327, %bb.c ] ; 2 uses
  %.1322 = phi i32 [ %.5, %bb.bd ], [ %.0321, %bb.c ] ; 13 uses
  %.1319 = phi i32 [ %.5, %bb.bd ], [ %.0318, %bb.c ]
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
  br i1 %.not428, label %bb.bd, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bd

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
  br i1 %.not427, label %bb.bd, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bd

bb.m:                                             ; preds = %bb.j
  %i.bg = or disjoint i32 %i.au, 256
  br label %bb.dg

bb.n:                                             ; preds = %bb.i
  %i.bh = sub i32 %i.au, %.0334                   ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 128
  br i1 %i.bi, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bj = trunc nuw nsw i32 %i.bh to i8
  %i.bk = or disjoint i8 %i.bj, -128
  store i8 %i.bk, ptr %.1361, align 1
  %.not421 = icmp eq ptr %.1343, null
  br i1 %.not421, label %bb.bd, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.1343, i64 4
  store i32 %.1322, ptr %.1343, align 4
  br label %bb.bd

bb.q:                                             ; preds = %bb.n
  %i.bm = and i32 %i.au, 63488
  %i.bn = icmp eq i32 %i.bm, 55296
  br i1 %i.bn, label %bb.r, label %bb.al

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
  br i1 %.not414, label %bb.bd, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.5347, i64 4
  store i32 %.2323, ptr %.5347, align 4
  br label %bb.bd

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
  br label %bb.dg

_ZL9getWindowPKjj.exit:                           ; preds = %bb.ae
  %2 = add i32 %i.by, -56614080
  %3 = icmp ult i32 %2, 128
  br i1 %3, label %4, label %5

4:                                                ; preds = %20, %17, %14, %11, %8, %5, %_ZL9getWindowPKjj.exit
  %.029.lcssa.wide.i = phi i32 [ 249, %_ZL9getWindowPKjj.exit ], [ 250, %5 ], [ 251, %8 ], [ 252, %11 ], [ 253, %14 ], [ 254, %17 ], [ 255, %20 ]
  %.lcssa.i = phi i32 [ 192, %_ZL9getWindowPKjj.exit ], [ 592, %5 ], [ 880, %8 ], [ 1328, %11 ], [ 12352, %14 ], [ 12448, %17 ], [ 65376, %20 ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 4
  br label %bb.ai

5:                                                ; preds = %_ZL9getWindowPKjj.exit
  %6 = add i32 %i.by, -56614480
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %4, label %8

8:                                                ; preds = %5
  %9 = add i32 %i.by, -56614768
  %10 = icmp ult i32 %9, 128
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = add i32 %i.by, -56615216
  %13 = icmp ult i32 %12, 128
  br i1 %13, label %4, label %14

14:                                               ; preds = %11
  %15 = add i32 %i.by, -56626240
  %16 = icmp ult i32 %15, 128
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  %18 = add i32 %i.by, -56626336
  %19 = icmp ult i32 %18, 128
  br i1 %19, label %4, label %20

20:                                               ; preds = %17
  %21 = add i32 %i.by, -56679264
  %22 = icmp ult i32 %21, 128
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = icmp ult i32 %i.bz, 128
  br i1 %24, label %_ZL16getDynamicOffsetjPj.exit.a, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %i.bz, 13312
  %27 = and i32 %i.bz, -16384
  %28 = icmp eq i32 %27, 65536
  %or.cond.i = or i1 %26, %28
  %29 = add i32 %i.by, -56732672
  %30 = icmp ult i32 %29, 12288
  %or.cond27.i = or i1 %30, %or.cond.i
  br i1 %or.cond27.i, label %31, label %bb.ah

31:                                               ; preds = %25
  %32 = and i32 %i.bz, 130944                     ; 2 uses
  store i32 %32, ptr %i.a, align 4
  %33 = lshr i32 %i.bz, 7
  br label %bb.ai

bb.ah:                                            ; preds = %25
  %34 = icmp ne i32 %i.bz, 65279
  %35 = add i32 %i.by, -56671232
  %36 = icmp ult i32 %35, 8176
  %or.cond3.i = and i1 %34, %36
  br i1 %or.cond3.i, label %37, label %_ZL16getDynamicOffsetjPj.exit.a

37:                                               ; preds = %bb.ah
  %38 = and i32 %i.bz, 65408                      ; 2 uses
  store i32 %38, ptr %i.a, align 4
  %39 = add nsw i32 %i.by, -56657920
  %40 = lshr i32 %39, 7
  br label %bb.ai

bb.ai:                                            ; preds = %4, %31, %37
  %41 = phi i32 [ %38, %37 ], [ %32, %31 ], [ %.lcssa.i, %4 ] ; 3 uses
  %.023.i433.ph = phi i32 [ %40, %37 ], [ %33, %31 ], [ %.029.lcssa.wide.i, %4 ]
  %i.ee = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ef = sext i8 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.am, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1             ; 5 uses
  %i.ei = add i8 %i.ee, 1                         ; 2 uses
  %i.ej = icmp eq i8 %i.ei, 8
  %spec.select.i434 = select i1 %i.ej, i8 0, i8 %i.ei
  store i8 %spec.select.i434, ptr %i.an, align 1
  %i.ek = zext i8 %i.eh to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ek
  store i32 %41, ptr %i.el, align 4
  %42 = load i8, ptr %i.an, align 1
  %43 = sext i8 %42 to i32                        ; 2 uses
  br label %44

44:                                               ; preds = %44, %bb.ai
  %.019.i435 = phi i32 [ %43, %bb.ai ], [ %spec.store.select.i436, %44 ] ; 2 uses
  %45 = add nsw i32 %.019.i435, -1
  %46 = icmp slt i32 %.019.i435, 1
  %spec.store.select.i436 = select i1 %46, i32 7, i32 %45 ; 4 uses
  %47 = sext i32 %spec.store.select.i436 to i64   ; 2 uses
  %48 = getelementptr inbounds i8, ptr %i.am, i64 %47
  %49 = load i8, ptr %48, align 1
  %.not.i437 = icmp eq i8 %49, %i.eh
  br i1 %.not.i437, label %50, label %44, !llvm.loop !14

50:                                               ; preds = %44
  %51 = add nsw i32 %spec.store.select.i436, 1    ; 2 uses
  %52 = icmp eq i32 %51, 8
  %spec.store.select1.i438 = select i1 %52, i32 0, i32 %51 ; 2 uses
  %.not2021.i439 = icmp eq i32 %spec.store.select1.i438, %43
  br i1 %.not2021.i439, label %_ZL16useDynamicWindowP8SCSUDataa.exit446, label %.lr.ph.i440

.lr.ph.i440:                                      ; preds = %50, %.lr.ph.i440
  %.023.i441 = phi i32 [ %spec.store.select2.i443, %.lr.ph.i440 ], [ %spec.store.select1.i438, %50 ] ; 3 uses
  %.122.i442 = phi i32 [ %.023.i441, %.lr.ph.i440 ], [ %spec.store.select.i436, %50 ]
  %53 = sext i32 %.023.i441 to i64                ; 2 uses
  %54 = getelementptr inbounds i8, ptr %i.am, i64 %53
  %55 = load i8, ptr %54, align 1
  %56 = sext i32 %.122.i442 to i64
  %57 = getelementptr inbounds i8, ptr %i.am, i64 %56
  store i8 %55, ptr %57, align 1
  %58 = add nsw i32 %.023.i441, 1                 ; 2 uses
  %59 = icmp eq i32 %58, 8
  %spec.store.select2.i443 = select i1 %59, i32 0, i32 %58 ; 2 uses
  %60 = load i8, ptr %i.an, align 1
  %61 = sext i8 %60 to i32
  %.not20.i444 = icmp eq i32 %spec.store.select2.i443, %61
  br i1 %.not20.i444, label %_ZL16useDynamicWindowP8SCSUDataa.exit446, label %.lr.ph.i440, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit446:         ; preds = %.lr.ph.i440, %50
  %.pre-phi.i445 = phi i64 [ %47, %50 ], [ %53, %.lr.ph.i440 ]
  %62 = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i445
  store i8 %i.eh, ptr %62, align 1
  %63 = zext i8 %i.eh to i32
  %64 = shl nuw nsw i32 %63, 21
  %65 = shl nuw nsw i32 %.023.i433.ph, 8
  %66 = add nsw i32 %65, -131072
  %67 = sub i32 %i.bz, %41
  %68 = or i32 %66, %64
  %69 = or i32 %68, %67
  %70 = or i32 %69, 184549504
  br label %bb.de

_ZL16getDynamicOffsetjPj.exit.a:                  ; preds = %bb.ah, %23
  %i.em = getelementptr inbounds nuw i8, ptr %.2362, i64 1
  store i8 15, ptr %.2362, align 1
  %.not413 = icmp eq ptr %.5347, null
  br i1 %.not413, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit.a
  %i.en = getelementptr inbounds nuw i8, ptr %.5347, i64 4
  store i32 %.2323, ptr %.5347, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZL16getDynamicOffsetjPj.exit.a
  %.7349 = phi ptr [ %i.en, %bb.aj ], [ null, %_ZL16getDynamicOffsetjPj.exit.a ]
  %i.eo = add nsw i32 %.2353, -1
  %i.ep = shl i32 %.2329, 16
  %i.eq = or disjoint i32 %i.ep, %i.bs
  br label %bb.de

bb.al:                                            ; preds = %bb.q
  %i.er = icmp ult i16 %i.at, 160
  br i1 %i.er, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = and i32 %i.au, 127
  %i.et = or disjoint i32 %i.es, 512
  br label %bb.dg

bb.an:                                            ; preds = %bb.al
  %i.eu = icmp eq i16 %i.at, -257
  %i.ev = icmp ugt i16 %i.at, -17
  %or.cond3 = or i1 %i.eu, %i.ev
  br i1 %or.cond3, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ew = or disjoint i32 %i.au, 917504
  br label %bb.df

bb.ap:                                            ; preds = %bb.an
  %i.ex = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull %i.x, i32 noundef %i.au) ; 6 uses
  %i.ey = icmp sgt i8 %i.ex, -1
  br i1 %i.ey, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %.not417 = icmp ult ptr %i.as, %i.i
  %i.ez = zext nneg i8 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4            ; 5 uses
  br i1 %.not417, label %bb.ar, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread490

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load i16, ptr %i.as, align 2            ; 4 uses
  %i.fd = zext i16 %i.fc to i32                   ; 2 uses
  %i.fe = add i32 %i.fb, 127
  %.not.i447 = icmp ult i32 %i.fe, %i.fd
  br i1 %.not.i447, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not7.i = icmp ugt i32 %i.fb, %i.fd
  br i1 %.not7.i, label %bb.at, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread490

bb.at:                                            ; preds = %bb.as
  %i.ff = icmp ult i16 %i.fc, 128
  br i1 %i.ff, label %_ZL24isInOffsetWindowOrDirectjj.exit, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread

_ZL24isInOffsetWindowOrDirectjj.exit:             ; preds = %bb.at
  %i.fg = icmp samesign ult i16 %i.fc, 32
  %i.fh = zext nneg i16 %i.fc to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, 9729
  %i.fk = icmp eq i64 %i.fj, 0
  %.not538 = select i1 %i.fg, i1 %i.fk, i1 false
  br i1 %.not538, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread, label %_ZL24isInOffsetWindowOrDirectjj.exit.thread490

_ZL24isInOffsetWindowOrDirectjj.exit.thread490:   ; preds = %bb.aq, %bb.as, %_ZL24isInOffsetWindowOrDirectjj.exit
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.ex)
  %narrow420 = add nuw nsw i8 %i.ex, 16
  %i.fl = zext nneg i8 %narrow420 to i32
  %i.fm = shl nuw nsw i32 %i.fl, 8
  %i.fn = sub i32 %i.au, %i.fb
  %i.fo = or i32 %i.fm, %i.fn
  %i.fp = or i32 %i.fo, 128
  br label %bb.dg

_ZL24isInOffsetWindowOrDirectjj.exit.thread:      ; preds = %bb.at, %bb.ar, %_ZL24isInOffsetWindowOrDirectjj.exit
  %narrow419 = add nuw nsw i8 %i.ex, 1
  %i.fq = zext nneg i8 %narrow419 to i32
  %i.fr = shl nuw nsw i32 %i.fq, 8
  %i.fs = sub i32 %i.au, %i.fb
  %i.ft = or i32 %i.fr, %i.fs
  %i.fu = or i32 %i.ft, 128
  br label %bb.dg

bb.au:                                            ; preds = %bb.ap
  %i.fv = tail call fastcc noundef signext i8 @_ZL9getWindowPKjj(ptr noundef nonnull @_ZL13staticOffsets, i32 noundef %i.au) ; 3 uses
  %i.fw = icmp sgt i8 %i.fv, -1
  br i1 %i.fw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %narrow416 = add nuw nsw i8 %i.fv, 1
  %i.fx = zext nneg i8 %narrow416 to i32
  %i.fy = shl nuw nsw i32 %i.fx, 8
  %i.fz = zext nneg i8 %i.fv to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @_ZL13staticOffsets, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = sub i32 %i.au, %i.gb
  %i.gd = or i32 %i.gc, %i.fy
  br label %bb.dg

bb.aw:                                            ; preds = %bb.au
  %i.ge = call fastcc noundef i32 @_ZL16getDynamicOffsetjPj(i32 noundef %i.au, ptr noundef %i.a) ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gg = load i8, ptr %i.an, align 1             ; 2 uses
  %i.gh = sext i8 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.am, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1             ; 4 uses
  %i.gk = add i8 %i.gg, 1                         ; 2 uses
  %i.gl = icmp eq i8 %i.gk, 8
  %spec.select.i448 = select i1 %i.gl, i8 0, i8 %i.gk
  store i8 %spec.select.i448, ptr %i.an, align 1
  %i.gm = load i32, ptr %i.a, align 4             ; 3 uses
  %i.gn = zext i8 %i.gj to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.gn
  store i32 %i.gm, ptr %i.go, align 4
  tail call fastcc void @_ZL16useDynamicWindowP8SCSUDataa(ptr noundef nonnull %i.e, i8 noundef signext %i.gj)
  %i.gp = zext i8 %i.gj to i32
  %i.gq = shl nuw nsw i32 %i.gp, 16
  %i.gr = add nuw nsw i32 %i.gq, 1572864
  %i.gs = shl nuw nsw i32 %i.ge, 8
  %i.gt = sub i32 %i.au, %i.gm
  %i.gu = or i32 %i.gs, %i.gr
  %i.gv = or i32 %i.gu, %i.gt
  %i.gw = or i32 %i.gv, 128
  br label %bb.df

bb.ay:                                            ; preds = %bb.aw
  %i.gx = add i16 %i.at, -13312
  %i.gy = icmp ult i16 %i.gx, -23552
  br i1 %i.gy, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %.not415 = icmp ult ptr %i.as, %i.i
  br i1 %.not415, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gz = load i16, ptr %i.as, align 2
  %i.ha = add i16 %i.gz, -13312
  %i.hb = icmp ult i16 %i.ha, -23552
  br i1 %i.hb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hc = or disjoint i32 %i.au, 983040
  br label %bb.df

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %i.hd = or disjoint i32 %i.au, 917504
  br label %bb.df

bb.bd:                                            ; preds = %bb.l, %bb.k, %bb.v, %bb.w, %bb.o, %bb.p, %bb.g, %bb.h
  %.5385 = phi ptr [ %i.as, %bb.g ], [ %i.as, %bb.h ], [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.as, %bb.o ], [ %i.as, %bb.p ], [ %i.bv, %bb.w ], [ %i.bv, %bb.v ]
  %.2362.pn.pn.pn = phi ptr [ %.1361, %bb.g ], [ %.1361, %bb.h ], [ %.1361, %bb.k ], [ %.1361, %bb.l ], [ %.1361, %bb.o ], [ %.1361, %bb.p ], [ %.2362, %bb.w ], [ %.2362, %bb.v ]
  %.5356.in = phi i32 [ %.1352, %bb.g ], [ %.1352, %bb.h ], [ %.1352, %bb.k ], [ %.1352, %bb.l ], [ %.1352, %bb.o ], [ %.1352, %bb.p ], [ %.2353, %bb.w ], [ %.2353, %bb.v ]
  %.10 = phi ptr [ null, %bb.g ], [ %i.az, %bb.h ], [ null, %bb.k ], [ %i.bf, %bb.l ], [ null, %bb.o ], [ %i.bl, %bb.p ], [ %i.ce, %bb.w ], [ null, %bb.v ]
  %.5 = phi i32 [ %i.av, %bb.g ], [ %i.av, %bb.h ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.o ], [ %i.av, %bb.p ], [ %i.bw, %bb.w ], [ %i.bw, %bb.v ] ; 2 uses
  %.5365 = getelementptr inbounds nuw i8, ptr %.2362.pn.pn.pn, i64 1
  %.5356 = add nsw i32 %.5356.in, -1
  br label %bb.d, !llvm.loop !19

bb.be:                                            ; preds = %bb.b
  br i1 %or.cond5, label %bb.by, label %.preheader

.preheader:                                       ; preds = %bb.be
  %i.he = icmp ult ptr %.0380, %i.i
  br i1 %i.he, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.hf = icmp slt i32 %.0351, 1
  br i1 %i.hf, label %.loopexit.sink.split, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.preheader
  %i.hg = getelementptr inbounds nuw i8, ptr %.0380, i64 2 ; 6 uses
  %i.hh = load i16, ptr %.0380, align 2           ; 4 uses
  %i.hi = zext i16 %i.hh to i32                   ; 3 uses
  %i.hj = add nsw i32 %.0318, 1                   ; 2 uses
  %i.hk = add nsw i32 %i.hi, -13312               ; 2 uses
  %i.hl = icmp ult i32 %i.hk, 41984
  br i1 %i.hl, label %bb.bg, label %.loopexit707

bb.bg:                                            ; preds = %bb.bf
  %.not411.peel = icmp eq i32 %.0351, 1
  br i1 %.not411.peel, label %.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = lshr i16 %i.hh, 8
  %i.hn = trunc nuw i16 %i.hm to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %.0360, i64 1
  store i8 %i.hn, ptr %.0360, align 1
  %i.hp = trunc i16 %i.hh to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.0360, i64 2 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZL27_SCSUFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a

_ZL16useDynamicWindowP8SCSUDataa.exit464:         ; preds = %.lr.ph.i458, %bb.cl
  %.pre-phi.i463 = phi i64 [ %i.lx, %bb.cl ], [ %i.mc, %.lr.ph.i458 ]
  %i.ml = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i463
  store i8 %.06.i451.ph, ptr %i.ml, align 1
  %i.mm = zext nneg i8 %.06.i451.ph to i32
  %i.mn = shl nuw nsw i32 %i.mm, 8
  %i.mo = sub i32 %i.kn, %i.ls
  %i.mp = or i32 %i.mn, %i.mo
  %i.mq = or i32 %i.mp, 57472
  br label %bb.dg

_ZL9getWindowPKjj.exit452:                        ; preds = %bb.ch, %bb.ci
  %i.mr = icmp ult ptr %i.kj, %i.i
  br i1 %i.mr, label %bb.cm, label %_ZL16getDynamicOffsetjPj.exit471

bb.cm:                                            ; preds = %_ZL9getWindowPKjj.exit452
  %i.ms = load i16, ptr %i.kj, align 2
  %i.mt = trunc i32 %.4331 to i16
  %i.mu = icmp eq i16 %i.ms, %i.mt
  br i1 %i.mu, label %bb.cn, label %_ZL16getDynamicOffsetjPj.exit471

bb.cn:                                            ; preds = %bb.cm
  %i.mv = add i32 %i.km, -56614080
  %i.mw = icmp ult i32 %i.mv, 128
  br i1 %i.mw, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.cn
  %.029.lcssa.wide.i469 = phi i32 [ 249, %bb.cn ], [ 250, %bb.cp ], [ 251, %bb.cq ], [ 252, %bb.cr ], [ 253, %bb.cs ], [ 254, %bb.ct ], [ 255, %bb.cu ]
  %.lcssa.i470 = phi i32 [ 192, %bb.cn ], [ 592, %bb.cp ], [ 880, %bb.cq ], [ 1328, %bb.cr ], [ 12352, %bb.cs ], [ 12448, %bb.ct ], [ 65376, %bb.cu ] ; 2 uses
  store i32 %.lcssa.i470, ptr %i.a, align 4
  br label %bb.da

bb.cp:                                            ; preds = %bb.cn
  %i.mx = add i32 %i.km, -56614480
  %i.my = icmp ult i32 %i.mx, 128
  br i1 %i.my, label %bb.co, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mz = add i32 %i.km, -56614768
  %i.na = icmp ult i32 %i.mz, 128
  br i1 %i.na, label %bb.co, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nb = add i32 %i.km, -56615216
  %i.nc = icmp ult i32 %i.nb, 128
  br i1 %i.nc, label %bb.co, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nd = add i32 %i.km, -56626240
  %i.ne = icmp ult i32 %i.nd, 128
  br i1 %i.ne, label %bb.co, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nf = add i32 %i.km, -56626336
  %i.ng = icmp ult i32 %i.nf, 128
  br i1 %i.ng, label %bb.co, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nh = add i32 %i.km, -56679264
  %i.ni = icmp ult i32 %i.nh, 128
  br i1 %i.ni, label %bb.co, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nj = icmp ult i32 %i.kn, 128
  br i1 %i.nj, label %_ZL16getDynamicOffsetjPj.exit471, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nk = icmp ult i32 %i.kn, 13312
  %i.nl = and i32 %i.kn, -16384
  %i.nm = icmp eq i32 %i.nl, 65536
  %or.cond.i465 = or i1 %i.nk, %i.nm
  %i.nn = add i32 %i.km, -56732672
  %i.no = icmp ult i32 %i.nn, 12288
  %or.cond27.i466 = or i1 %i.no, %or.cond.i465
  br i1 %or.cond27.i466, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.np = and i32 %i.kn, 130944                   ; 2 uses
  store i32 %i.np, ptr %i.a, align 4
  %i.nq = lshr i32 %i.kn, 7
  br label %bb.da

bb.cy:                                            ; preds = %bb.cw
  %i.nr = icmp ne i32 %i.kn, 65279
  %i.ns = add i32 %i.km, -56671232
  %i.nt = icmp ult i32 %i.ns, 8176
  %or.cond3.i467 = and i1 %i.nr, %i.nt
  br i1 %or.cond3.i467, label %bb.cz, label %_ZL16getDynamicOffsetjPj.exit471

bb.cz:                                            ; preds = %bb.cy
  %i.nu = and i32 %i.kn, 65408                    ; 2 uses
  store i32 %i.nu, ptr %i.a, align 4
  %i.nv = add nsw i32 %i.km, -56657920
  %i.nw = lshr i32 %i.nv, 7
  br label %bb.da

bb.da:                                            ; preds = %bb.co, %bb.cx, %bb.cz
  %i.nx = phi i32 [ %i.nu, %bb.cz ], [ %i.np, %bb.cx ], [ %.lcssa.i470, %bb.co ] ; 3 uses
  %.023.i468.ph = phi i32 [ %i.nw, %bb.cz ], [ %i.nq, %bb.cx ], [ %.029.lcssa.wide.i469, %bb.co ]
  %i.ny = load i8, ptr %i.an, align 1             ; 2 uses
  %i.nz = sext i8 %i.ny to i64
  %i.oa = getelementptr inbounds i8, ptr %i.am, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1             ; 5 uses
  %i.oc = add i8 %i.ny, 1                         ; 2 uses
  %i.od = icmp eq i8 %i.oc, 8
  %spec.select.i472 = select i1 %i.od, i8 0, i8 %i.oc
  store i8 %spec.select.i472, ptr %i.an, align 1
  %i.oe = zext i8 %i.ob to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.oe
  store i32 %i.nx, ptr %i.of, align 4
  %i.og = load i8, ptr %i.an, align 1
  %i.oh = sext i8 %i.og to i32                    ; 2 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.019.i473 = phi i32 [ %i.oh, %bb.da ], [ %spec.store.select.i474, %bb.db ] ; 2 uses
  %i.oi = add nsw i32 %.019.i473, -1
  %i.oj = icmp slt i32 %.019.i473, 1
  %spec.store.select.i474 = select i1 %i.oj, i32 7, i32 %i.oi ; 4 uses
  %i.ok = sext i32 %spec.store.select.i474 to i64 ; 2 uses
  %i.ol = getelementptr inbounds i8, ptr %i.am, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1
  %.not.i475 = icmp eq i8 %i.om, %i.ob
  br i1 %.not.i475, label %bb.dc, label %bb.db, !llvm.loop !14

bb.dc:                                            ; preds = %bb.db
  %i.on = add nsw i32 %spec.store.select.i474, 1  ; 2 uses
  %i.oo = icmp eq i32 %i.on, 8
  %spec.store.select1.i476 = select i1 %i.oo, i32 0, i32 %i.on ; 2 uses
  %.not2021.i477 = icmp eq i32 %spec.store.select1.i476, %i.oh
  br i1 %.not2021.i477, label %_ZL16useDynamicWindowP8SCSUDataa.exit484, label %.lr.ph.i478

.lr.ph.i478:                                      ; preds = %bb.dc, %.lr.ph.i478
  %.023.i479 = phi i32 [ %spec.store.select2.i481, %.lr.ph.i478 ], [ %spec.store.select1.i476, %bb.dc ] ; 3 uses
  %.122.i480 = phi i32 [ %.023.i479, %.lr.ph.i478 ], [ %spec.store.select.i474, %bb.dc ]
  %i.op = sext i32 %.023.i479 to i64              ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %i.am, i64 %i.op
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = sext i32 %.122.i480 to i64
  %i.ot = getelementptr inbounds i8, ptr %i.am, i64 %i.os
  store i8 %i.or, ptr %i.ot, align 1
  %i.ou = add nsw i32 %.023.i479, 1               ; 2 uses
  %i.ov = icmp eq i32 %i.ou, 8
  %spec.store.select2.i481 = select i1 %i.ov, i32 0, i32 %i.ou ; 2 uses
  %i.ow = load i8, ptr %i.an, align 1
  %i.ox = sext i8 %i.ow to i32
  %.not20.i482 = icmp eq i32 %spec.store.select2.i481, %i.ox
  br i1 %.not20.i482, label %_ZL16useDynamicWindowP8SCSUDataa.exit484, label %.lr.ph.i478, !llvm.loop !15

_ZL16useDynamicWindowP8SCSUDataa.exit484:         ; preds = %.lr.ph.i478, %bb.dc
  %.pre-phi.i483 = phi i64 [ %i.ok, %bb.dc ], [ %i.op, %.lr.ph.i478 ]
  %i.oy = getelementptr inbounds i8, ptr %i.am, i64 %.pre-phi.i483
  store i8 %i.ob, ptr %i.oy, align 1
  %i.oz = zext i8 %i.ob to i32
  %i.pa = shl nuw nsw i32 %i.oz, 21
  %i.pb = shl nuw nsw i32 %.023.i468.ph, 8
  %i.pc = add nuw nsw i32 %i.pb, 268304384
  %i.pd = sub i32 %i.kn, %i.nx
  %i.pe = or i32 %i.pc, %i.pa
  %i.pf = or i32 %i.pe, %i.pd
  %i.pg = or i32 %i.pf, -251658112
  br label %bb.de

_ZL16getDynamicOffsetjPj.exit471:                 ; preds = %bb.cy, %bb.cv, %bb.cm, %_ZL9getWindowPKjj.exit452
  %i.ph = shl i32 %.4331, 16
  %i.pi = or disjoint i32 %i.ph, %i.kg
  br label %bb.de

bb.dd:                                            ; preds = %bb.bw
  %i.pj = or disjoint i32 %.lcssa656, 15728640
  br label %bb.df

.loopexit.sink.split:                             ; preds = %bb.bx, %bb.bz, %.lr.ph.preheader, %bb.r, %bb.t, %bb.e, %.lr.ph.preheader977, %.lr.ph, %bb.dv, %bb.dw, %.thread527, %bb.ds
  %.sink = phi i32 [ 15, %bb.dv ], [ 15, %.lr.ph ], [ 15, %bb.ds ], [ 15, %.thread527 ], [ 15, %bb.dw ], [ 15, %bb.e ], [ 12, %bb.bz ], [ 12, %bb.bx ], [ 12, %bb.t ], [ 15, %.lr.ph.preheader ], [ 12, %bb.r ], [ 15, %.lr.ph.preheader977 ]
  %.8388.ph = phi ptr [ %.9389509, %bb.dv ], [ %i.hw, %.lr.ph ], [ %.9389509, %bb.ds ], [ %.9389509, %.thread527 ], [ %.9389509, %bb.dw ], [ %.1381, %bb.e ], [ %.7387, %bb.bz ], [ %.lcssa662, %bb.bx ], [ %.2382, %bb.t ], [ %.0380, %.lr.ph.preheader ], [ %i.as, %bb.r ], [ %i.hg, %.lr.ph.preheader977 ]
  %.8368.ph = phi ptr [ %i.rt, %bb.dv ], [ %i.ig, %.lr.ph ], [ %.9369510, %bb.ds ], [ %i.rr, %.thread527 ], [ %i.ru, %bb.dw ], [ %.1361, %bb.e ], [ %.7367, %bb.bz ], [ %.6366612.lcssa635, %bb.bx ], [ %.2362, %bb.t ], [ %.0360, %.lr.ph.preheader ], [ %.1361, %bb.r ], [ %i.hq, %.lr.ph.preheader977 ]
  %.14.ph = phi ptr [ null, %bb.dv ], [ %.12, %.lr.ph ], [ %.15512, %bb.ds ], [ null, %.thread527 ], [ %i.rv, %bb.dw ], [ %.1343, %bb.e ], [ %.13, %bb.bz ], [ %.11614.lcssa641, %bb.bx ], [ %.5347, %bb.t ], [ %.0342, %.lr.ph.preheader ], [ %.1343, %bb.r ], [ %.12.peel, %.lr.ph.preheader977 ]
  %.1340.ph = phi i8 [ %.2341513, %bb.dv ], [ 0, %.lr.ph ], [ %.2341513, %bb.ds ], [ %.2341513, %.thread527 ], [ %.2341513, %bb.dw ], [ %.0339, %bb.e ], [ 0, %bb.bz ], [ 0, %bb.bx ], [ %.0339, %bb.t ], [ 0, %.lr.ph.preheader ], [ %.0339, %bb.r ], [ 0, %.lr.ph.preheader977 ]
  %.1337.ph = phi i8 [ %.2338514, %bb.dv ], [ %.0336, %.lr.ph ], [ %.2338514, %bb.ds ], [ %.2338514, %.thread527 ], [ %.2338514, %bb.dw ], [ %.0336, %.lr.ph.preheader977 ], [ %.0336, %bb.e ], [ %.0336, %bb.t ], [ %.0336, %bb.r ], [ %.0336, %.lr.ph.preheader ], [ %.0336, %bb.bz ], [ %.0336, %bb.bx ]
  %.5332.ph = phi i32 [ 0, %bb.dv ], [ 0, %.lr.ph ], [ %.8359511, %bb.ds ], [ 0, %.thread527 ], [ 0, %bb.dw ], [ %.1328, %bb.e ], [ %.4331, %bb.bz ], [ %.lcssa656, %bb.bx ], [ %.2329, %bb.t ], [ %.0327, %.lr.ph.preheader ], [ %i.au, %bb.r ], [ 0, %.lr.ph.preheader977 ]
  store i32 %.sink, ptr %1, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.d, %bb.by, %.preheader, %bb.bj, %bb.bn, %.loopexit.sink.split
  %.8388 = phi ptr [ %i.hw, %bb.bn ], [ %.8388.ph, %.loopexit.sink.split ], [ %.0380, %.preheader ], [ %.7387, %bb.by ], [ %.2382, %bb.s ], [ %.1381, %bb.d ], [ %i.hg, %bb.bj ]
  %.8368 = phi ptr [ %i.ig, %bb.bn ], [ %.8368.ph, %.loopexit.sink.split ], [ %.0360, %.preheader ], [ %.7367, %bb.by ], [ %.2362, %bb.s ], [ %.1361, %bb.d ], [ %i.hq, %bb.bj ]
  %.14 = phi ptr [ %.12, %bb.bn ], [ %.14.ph, %.loopexit.sink.split ], [ %.0342, %.preheader ], [ %.13, %bb.by ], [ %.5347, %bb.s ], [ %.1343, %bb.d ], [ %.12.peel, %bb.bj ]
  %.1340 = phi i8 [ 0, %bb.bn ], [ %.1340.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.by ], [ %.0339, %bb.s ], [ %.0339, %bb.d ], [ 0, %bb.bj ]
  %.1337 = phi i8 [ %.0336, %bb.bn ], [ %.1337.ph, %.loopexit.sink.split ], [ %.0336, %bb.bj ], [ %.0336, %.preheader ], [ %.0336, %bb.by ], [ %.0336, %bb.d ], [ %.0336, %bb.s ]
  %.5332 = phi i32 [ 0, %bb.bn ], [ %.5332.ph, %.loopexit.sink.split ], [ %.0327, %.preheader ], [ %.4331, %bb.by ], [ %.2329, %bb.s ], [ %.1328, %bb.d ], [ 0, %bb.bj ]
  store i8 %.1340, ptr %i.t, align 4
  store i8 %.1337, ptr %i.v, align 1
  store i32 %.5332, ptr %i.ab, align 4
  store ptr %.8388, ptr %i.f, align 8
  store ptr %.8368, ptr %i.j, align 8
  store ptr %.14, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.de:                                            ; preds = %_ZL16getDynamicOffsetjPj.exit471, %_ZL16useDynamicWindowP8SCSUDataa.exit484, %bb.ak, %_ZL16useDynamicWindowP8SCSUDataa.exit446
  %.9389.jt4 = phi ptr [ %i.kj, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %i.bv, %bb.ak ], [ %i.bv, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.kj, %_ZL16getDynamicOffsetjPj.exit471 ] ; 3 uses
  %.9369.jt4 = phi ptr [ %.7367, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %i.em, %bb.ak ], [ %.2362, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.7367, %_ZL16getDynamicOffsetjPj.exit471 ] ; 3 uses
  %.8359.jt4 = phi i32 [ %.7358, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %i.eo, %bb.ak ], [ %.2353, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.7358, %_ZL16getDynamicOffsetjPj.exit471 ] ; 4 uses
  %.15.jt4 = phi ptr [ %.13, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %.7349, %bb.ak ], [ %.5347, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.13, %_ZL16getDynamicOffsetjPj.exit471 ] ; 4 uses
  %.2341.jt4 = phi i8 [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ 0, %bb.ak ], [ %.0339, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ 0, %_ZL16getDynamicOffsetjPj.exit471 ] ; 3 uses
  %.2338.jt4 = phi i8 [ %i.ob, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %.0336, %bb.ak ], [ %i.eh, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.0336, %_ZL16getDynamicOffsetjPj.exit471 ] ; 3 uses
  %.1335.jt4 = phi i32 [ %i.nx, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %.0334, %bb.ak ], [ %41, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.0334, %_ZL16getDynamicOffsetjPj.exit471 ] ; 2 uses
  %.6333.jt4 = phi i32 [ %i.pg, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %i.eq, %bb.ak ], [ %70, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.pi, %_ZL16getDynamicOffsetjPj.exit471 ] ; 4 uses
  %.5326.jt4 = phi i32 [ %.4325, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %.2323, %bb.ak ], [ %.2323, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %.4325, %_ZL16getDynamicOffsetjPj.exit471 ] ; 3 uses
  %.8.jt4 = phi i32 [ %i.kk, %_ZL16useDynamicWindowP8SCSUDataa.exit484 ], [ %i.bw, %bb.ak ], [ %i.bw, %_ZL16useDynamicWindowP8SCSUDataa.exit446 ], [ %i.kk, %_ZL16getDynamicOffsetjPj.exit471 ] ; 2 uses
  %.not423.jt4 = icmp samesign ult i32 %.8359.jt4, 4
  br i1 %.not423.jt4, label %.thread, label %bb.dh

bb.df:                                            ; preds = %bb.bv, %bb.dd, %bb.bc, %bb.bb, %bb.ax, %bb.ao
  %.9389.jt3 = phi ptr [ %i.as, %bb.ax ], [ %.lcssa662, %bb.bv ], [ %i.as, %bb.ao ], [ %i.as, %bb.bb ], [ %i.as, %bb.bc ], [ %.lcssa662, %bb.dd ] ; 3 uses
  %.9369.jt3 = phi ptr [ %.1361, %bb.ax ], [ %.6366612.lcssa635, %bb.bv ], [ %.1361, %bb.ao ], [ %.1361, %bb.bb ], [ %.1361, %bb.bc ], [ %.6366612.lcssa635, %bb.dd ] ; 3 uses
  %.8359.jt3 = phi i32 [ %.1352, %bb.ax ], [ %.6357613.lcssa638, %bb.bv ], [ %.1352, %bb.ao ], [ %.1352, %bb.bb ], [ %.1352, %bb.bc ], [ %.6357613.lcssa638, %bb.dd ] ; 4 uses
  %.15.jt3 = phi ptr [ %.1343, %bb.ax ], [ %.11614.lcssa641, %bb.bv ], [ %.1343, %bb.ao ], [ %.1343, %bb.bb ], [ %.1343, %bb.bc ], [ %.11614.lcssa641, %bb.dd ] ; 3 uses
  %.2341.jt3 = phi i8 [ %.0339, %bb.ax ], [ 1, %bb.bv ], [ %.0339, %bb.ao ], [ 0, %bb.bb ], [ %.0339, %bb.bc ], [ 0, %bb.dd ] ; 3 uses
  %.2338.jt3 = phi i8 [ %i.gj, %bb.ax ], [ %i.jn, %bb.bv ], [ %.0336, %bb.ao ], [ %.0336, %bb.bb ], [ %.0336, %bb.bc ], [ %.0336, %bb.dd ] ; 3 uses
  %.1335.jt3 = phi i32 [ %i.gm, %bb.ax ], [ %i.jq, %bb.bv ], [ %.0334, %bb.ao ], [ %.0334, %bb.bb ], [ %.0334, %bb.bc ], [ %.0334, %bb.dd ] ; 2 uses
  %.6333.jt3 = phi i32 [ %i.gw, %bb.ax ], [ %i.ka, %bb.bv ], [ %i.ew, %bb.ao ], [ %i.hc, %bb.bb ], [ %i.hd, %bb.bc ], [ %i.pj, %bb.dd ] ; 3 uses
  %.5326.jt3 = phi i32 [ %.1322, %bb.ax ], [ %.3324616.lcssa647, %bb.bv ], [ %.1322, %bb.ao ], [ %.1322, %bb.bb ], [ %.1322, %bb.bc ], [ %.3324616.lcssa647, %bb.dd ] ; 2 uses
  %.8.jt3 = phi i32 [ %i.av, %bb.ax ], [ %.lcssa653, %bb.bv ], [ %i.av, %bb.ao ], [ %i.av, %bb.bb ], [ %i.av, %bb.bc ], [ %.lcssa653, %bb.dd ] ; 2 uses
  %.not423.jt3 = icmp samesign ult i32 %.8359.jt3, 3
  br i1 %.not423.jt3, label %.thread, label %bb.di

bb.dg:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bp, %_ZL16useDynamicWindowP8SCSUDataa.exit464, %_ZL16useDynamicWindowP8SCSUDataa.exit, %bb.av, %_ZL24isInOffsetWindowOrDirectjj.exit.thread, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490, %bb.am, %bb.m
  %.9389.jt2 = phi ptr [ %i.as, %bb.m ], [ %i.as, %bb.am ], [ %.lcssa662, %bb.bp ], [ %i.as, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %i.as, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.as, %bb.av ], [ %.lcssa662, %bb.br ], [ %.lcssa662, %bb.bt ], [ %i.kj, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %i.bv, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa662, %bb.bu ] ; 3 uses
  %.9369.jt2 = phi ptr [ %.1361, %bb.m ], [ %.1361, %bb.am ], [ %.6366612.lcssa635, %bb.bp ], [ %.1361, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.1361, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1361, %bb.av ], [ %.6366612.lcssa635, %bb.br ], [ %.6366612.lcssa635, %bb.bt ], [ %.7367, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.2362, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6366612.lcssa635, %bb.bu ] ; 3 uses
  %.8359.jt2 = phi i32 [ %.1352, %bb.m ], [ %.1352, %bb.am ], [ %.6357613.lcssa638, %bb.bp ], [ %.1352, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.1352, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1352, %bb.av ], [ %.6357613.lcssa638, %bb.br ], [ %.6357613.lcssa638, %bb.bt ], [ %.7358, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.2353, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.6357613.lcssa638, %bb.bu ] ; 3 uses
  %.15.jt2 = phi ptr [ %.1343, %bb.m ], [ %.1343, %bb.am ], [ %.11614.lcssa641, %bb.bp ], [ %.1343, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.1343, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1343, %bb.av ], [ %.11614.lcssa641, %bb.br ], [ %.11614.lcssa641, %bb.bt ], [ %.13, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.5347, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.11614.lcssa641, %bb.bu ] ; 3 uses
  %.2341.jt2 = phi i8 [ %.0339, %bb.m ], [ %.0339, %bb.am ], [ 0, %bb.bp ], [ %.0339, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.0339, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0339, %bb.av ], [ 1, %bb.br ], [ 1, %bb.bt ], [ 1, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.0339, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ 0, %bb.bu ] ; 3 uses
  %.2338.jt2 = phi i8 [ %.0336, %bb.m ], [ %.0336, %bb.am ], [ %.0336, %bb.bp ], [ %i.ex, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.0336, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0336, %bb.av ], [ %.0336, %bb.br ], [ %i.iy, %bb.bt ], [ %.06.i451.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.06.i.ph, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0336, %bb.bu ] ; 3 uses
  %.1335.jt2 = phi i32 [ %.0334, %bb.m ], [ %.0334, %bb.am ], [ %.0334, %bb.bp ], [ %i.fb, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.0334, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.0334, %bb.av ], [ %.0334, %bb.br ], [ %i.jc, %bb.bt ], [ %i.ls, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %i.df, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.0334, %bb.bu ] ; 2 uses
  %.6333.jt2 = phi i32 [ %i.bg, %bb.m ], [ %i.et, %bb.am ], [ %.lcssa656, %bb.bp ], [ %i.fp, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %i.fu, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.gd, %bb.av ], [ %i.ix, %bb.br ], [ %i.jh, %bb.bt ], [ %i.mq, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %i.ed, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa656, %bb.bu ] ; 3 uses
  %.5326.jt2 = phi i32 [ %.1322, %bb.m ], [ %.1322, %bb.am ], [ %.3324616.lcssa647, %bb.bp ], [ %.1322, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %.1322, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %.1322, %bb.av ], [ %.3324616.lcssa647, %bb.br ], [ %.3324616.lcssa647, %bb.bt ], [ %.4325, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %.2323, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.3324616.lcssa647, %bb.bu ] ; 2 uses
  %.8.jt2 = phi i32 [ %i.av, %bb.m ], [ %i.av, %bb.am ], [ %.lcssa653, %bb.bp ], [ %i.av, %_ZL24isInOffsetWindowOrDirectjj.exit.thread490 ], [ %i.av, %_ZL24isInOffsetWindowOrDirectjj.exit.thread ], [ %i.av, %bb.av ], [ %.lcssa653, %bb.br ], [ %.lcssa653, %bb.bt ], [ %i.kk, %_ZL16useDynamicWindowP8SCSUDataa.exit464 ], [ %i.bw, %_ZL16useDynamicWindowP8SCSUDataa.exit ], [ %.lcssa653, %bb.bu ] ; 2 uses
  %.not423.jt2 = icmp samesign ult i32 %.8359.jt2, 2
  br i1 %.not423.jt2, label %.thread, label %bb.dj

bb.dh:                                            ; preds = %bb.de
  %i.pk = icmp eq ptr %.15.jt4, null
  %i.pl = lshr i32 %.6333.jt4, 24
  %i.pm = trunc nuw i32 %i.pl to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %.9369.jt4, i64 1 ; 2 uses
  store i8 %i.pm, ptr %.9369.jt4, align 1
  br i1 %i.pk, label %bb.dk, label %bb.dm

bb.di:                                            ; preds = %bb.df
  %i.po = icmp eq ptr %.15.jt3, null
  br i1 %i.po, label %bb.dk, label %.thread842

bb.dj:                                            ; preds = %bb.dg
  %i.pp = icmp eq ptr %.15.jt2, null
  br i1 %i.pp, label %bb.dl, label %.thread854

bb.dk:                                            ; preds = %bb.dh, %bb.di
  %.0317798.neg = phi i32 [ -3, %bb.di ], [ -4, %bb.dh ]
  %.8793 = phi i32 [ %.8.jt3, %bb.di ], [ %.8.jt4, %bb.dh ]
  %.6333788 = phi i32 [ %.6333.jt3, %bb.di ], [ %.6333.jt4, %bb.dh ] ; 2 uses
  %.1335783 = phi i32 [ %.1335.jt3, %bb.di ], [ %.1335.jt4, %bb.dh ]
  %.2338779 = phi i8 [ %.2338.jt3, %bb.di ], [ %.2338.jt4, %bb.dh ]
  %.2341774 = phi i8 [ %.2341.jt3, %bb.di ], [ %.2341.jt4, %bb.dh ]
  %.8359767 = phi i32 [ %.8359.jt3, %bb.di ], [ %.8359.jt4, %bb.dh ]
  %.9389760 = phi ptr [ %.9389.jt3, %bb.di ], [ %.9389.jt4, %bb.dh ]
  %.10370 = phi ptr [ %.9369.jt3, %bb.di ], [ %i.pn, %bb.dh ] ; 2 uses
  %i.pq = lshr i32 %.6333788, 16
  %i.pr = trunc i32 %i.pq to i8
  %i.ps = getelementptr inbounds nuw i8, ptr %.10370, i64 1
  store i8 %i.pr, ptr %.10370, align 1
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %.0317799.neg = phi i32 [ -2, %bb.dj ], [ %.0317798.neg, %bb.dk ]
  %.8794 = phi i32 [ %.8.jt2, %bb.dj ], [ %.8793, %bb.dk ]
  %.6333789 = phi i32 [ %.6333.jt2, %bb.dj ], [ %.6333788, %bb.dk ] ; 2 uses
  %.1335784 = phi i32 [ %.1335.jt2, %bb.dj ], [ %.1335783, %bb.dk ]
  %.2338780 = phi i8 [ %.2338.jt2, %bb.dj ], [ %.2338779, %bb.dk ]
  %.2341775 = phi i8 [ %.2341.jt2, %bb.dj ], [ %.2341774, %bb.dk ]
  %.8359768 = phi i32 [ %.8359.jt2, %bb.dj ], [ %.8359767, %bb.dk ]
  %.9389761 = phi ptr [ %.9389.jt2, %bb.dj ], [ %.9389760, %bb.dk ]
  %.11371 = phi ptr [ %.9369.jt2, %bb.dj ], [ %i.ps, %bb.dk ] ; 3 uses
  %i.pt = lshr i32 %.6333789, 8
  %i.pu = trunc i32 %i.pt to i8
  store i8 %i.pu, ptr %.11371, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.11371, i64 1
  %i.pw = trunc i32 %.6333789 to i8
  store i8 %i.pw, ptr %i.pv, align 1
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dh
  %i.px = getelementptr inbounds nuw i8, ptr %.15.jt4, i64 4
  store i32 %.5326.jt4, ptr %.15.jt4, align 4
  br label %.thread842

.thread842:                                       ; preds = %bb.di, %bb.dm
  %.9389759840 = phi ptr [ %.9389.jt4, %bb.dm ], [ %.9389.jt3, %bb.di ]
  %.8359766836 = phi i32 [ %.8359.jt4, %bb.dm ], [ %.8359.jt3, %bb.di ]
  %.2341773832 = phi i8 [ %.2341.jt4, %bb.dm ], [ %.2341.jt3, %bb.di ]
  %.2338778829 = phi i8 [ %.2338.jt4, %bb.dm ], [ %.2338.jt3, %bb.di ]
  %.1335782826 = phi i32 [ %.1335.jt4, %bb.dm ], [ %.1335.jt3, %bb.di ]
  %.6333787823 = phi i32 [ %.6333.jt4, %bb.dm ], [ %.6333.jt3, %bb.di ] ; 2 uses
  %.5326791820 = phi i32 [ %.5326.jt4, %bb.dm ], [ %.5326.jt3, %bb.di ] ; 2 uses
  %.8792817 = phi i32 [ %.8.jt4, %bb.dm ], [ %.8.jt3, %bb.di ]
  %.0317797814.neg = phi i32 [ -4, %bb.dm ], [ -3, %bb.di ]
  %.13373 = phi ptr [ %i.pn, %bb.dm ], [ %.9369.jt3, %bb.di ] ; 2 uses
  %.16 = phi ptr [ %i.px, %bb.dm ], [ %.15.jt3, %bb.di ] ; 2 uses
  %i.py = lshr i32 %.6333787823, 16
  %i.pz = trunc i32 %i.py to i8
  %i.qa = getelementptr inbounds nuw i8, ptr %.13373, i64 1
  store i8 %i.pz, ptr %.13373, align 1
  %i.qb = getelementptr inbounds nuw i8, ptr %.16, i64 4
  store i32 %.5326791820, ptr %.16, align 4
  br label %.thread854

.thread854:                                       ; preds = %bb.dj, %.thread842
  %.9389759839 = phi ptr [ %.9389759840, %.thread842 ], [ %.9389.jt2, %bb.dj ]
  %.8359766835 = phi i32 [ %.8359766836, %.thread842 ], [ %.8359.jt2, %bb.dj ]
  %.2341773831 = phi i8 [ %.2341773832, %.thread842 ], [ %.2341.jt2, %bb.dj ]
  %.2338778828 = phi i8 [ %.2338778829, %.thread842 ], [ %.2338.jt2, %bb.dj ]
  %.1335782825 = phi i32 [ %.1335782826, %.thread842 ], [ %.1335.jt2, %bb.dj ]
  %.6333787824 = phi i32 [ %.6333787823, %.thread842 ], [ %.6333.jt2, %bb.dj ] ; 2 uses
  %.5326791821 = phi i32 [ %.5326791820, %.thread842 ], [ %.5326.jt2, %bb.dj ] ; 2 uses
  %.8792816 = phi i32 [ %.8792817, %.thread842 ], [ %.8.jt2, %bb.dj ]
  %.0317797813.neg = phi i32 [ %.0317797814.neg, %.thread842 ], [ -2, %bb.dj ]
  %.14374 = phi ptr [ %i.qa, %.thread842 ], [ %.9369.jt2, %bb.dj ] ; 3 uses
  %.17 = phi ptr [ %i.qb, %.thread842 ], [ %.15.jt2, %bb.dj ] ; 3 uses
  %i.qc = lshr i32 %.6333787824, 8
  %i.qd = trunc i32 %i.qc to i8
  store i8 %i.qd, ptr %.14374, align 1
  store i32 %.5326791821, ptr %.17, align 4
  %i.qe = getelementptr inbounds nuw i8, ptr %.17, i64 4
  %i.qf = getelementptr inbounds nuw i8, ptr %.14374, i64 1
  %i.qg = trunc i32 %.6333787824 to i8
  store i8 %i.qg, ptr %i.qf, align 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.17, i64 8
  store i32 %.5326791821, ptr %i.qe, align 4
  br label %bb.dn

bb.dn:                                            ; preds = %.thread854, %bb.dl
  %.0317800.neg = phi i32 [ %.0317797813.neg, %.thread854 ], [ %.0317799.neg, %bb.dl ]
  %.8795 = phi i32 [ %.8792816, %.thread854 ], [ %.8794, %bb.dl ] ; 2 uses
  %.1335785 = phi i32 [ %.1335782825, %.thread854 ], [ %.1335784, %bb.dl ]
  %.2338781 = phi i8 [ %.2338778828, %.thread854 ], [ %.2338780, %bb.dl ]
  %.2341776 = phi i8 [ %.2341773831, %.thread854 ], [ %.2341775, %bb.dl ]
  %.8359769 = phi i32 [ %.8359766835, %.thread854 ], [ %.8359768, %bb.dl ]
  %.9389762 = phi ptr [ %.9389759839, %.thread854 ], [ %.9389761, %bb.dl ]
  %.14374.pn = phi ptr [ %.14374, %.thread854 ], [ %.11371, %bb.dl ]
  %.19 = phi ptr [ %i.qh, %.thread854 ], [ null, %bb.dl ]
  %.16376 = getelementptr inbounds nuw i8, ptr %.14374.pn, i64 2
  %i.qi = add i32 %.0317800.neg, %.8359769
  br label %bb.b

.thread:                                          ; preds = %bb.dg, %bb.df, %bb.de, %bb.bg, %bb.bk
  %.0317517 = phi i32 [ 2, %bb.bk ], [ 2, %bb.dg ], [ 3, %bb.df ], [ 4, %bb.de ], [ 2, %bb.bg ]
  %.5326516 = phi i32 [ %.66171030, %bb.bk ], [ %.5326.jt2, %bb.dg ], [ %.5326.jt3, %bb.df ], [ %.5326.jt4, %bb.de ], [ %.0321, %bb.bg ] ; 3 uses
  %.6333515 = phi i32 [ %i.hy, %bb.bk ], [ %.6333.jt2, %bb.dg ], [ %.6333.jt3, %bb.df ], [ %.6333.jt4, %bb.de ], [ %i.hi, %bb.bg ] ; 5 uses
  %.2338514 = phi i8 [ %.0336, %bb.bk ], [ %.2338.jt2, %bb.dg ], [ %.2338.jt3, %bb.df ], [ %.2338.jt4, %bb.de ], [ %.0336, %bb.bg ] ; 4 uses
  %.2341513 = phi i8 [ 0, %bb.bk ], [ %.2341.jt2, %bb.dg ], [ %.2341.jt3, %bb.df ], [ %.2341.jt4, %bb.de ], [ 0, %bb.bg ] ; 4 uses
  %.15512 = phi ptr [ %.116141031, %bb.bk ], [ %.15.jt2, %bb.dg ], [ %.15.jt3, %bb.df ], [ %.15.jt4, %bb.de ], [ %.0342, %bb.bg ] ; 8 uses
  %.8359511 = phi i32 [ 1, %bb.bk ], [ 1, %bb.dg ], [ %.8359.jt3, %bb.df ], [ %.8359.jt4, %bb.de ], [ 1, %bb.bg ] ; 3 uses
  %.9369510 = phi ptr [ %.63666121032, %bb.bk ], [ %.9369.jt2, %bb.dg ], [ %.9369.jt3, %bb.df ], [ %.9369.jt4, %bb.de ], [ %.0360, %bb.bg ] ; 9 uses
  %.9389509 = phi ptr [ %i.hw, %bb.bk ], [ %.9389.jt2, %bb.dg ], [ %.9389.jt3, %bb.df ], [ %.9389.jt4, %bb.de ], [ %i.hg, %bb.bg ] ; 4 uses
  %i.qj = sub nsw i32 %.0317517, %.8359511        ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 4 uses
  switch i32 %i.qj, label %bb.ds [
    i32 4, label %bb.do
    i32 3, label %bb.dp
    i32 2, label %bb.dq
    i32 1, label %bb.dr
  ]

bb.do:                                            ; preds = %.thread
  %i.ql = lshr i32 %.6333515, 24
  %i.qm = trunc nuw i32 %i.ql to i8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.c, i64 105
  store i8 %i.qm, ptr %i.qk, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.thread
  %.0 = phi ptr [ %i.qn, %bb.do ], [ %i.qk, %.thread ] ; 2 uses
  %i.qo = lshr i32 %.6333515, 16
  %i.qp = trunc i32 %i.qo to i8
  %i.qq = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.qp, ptr %.0, align 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.thread
  %.1 = phi ptr [ %i.qq, %bb.dp ], [ %i.qk, %.thread ] ; 2 uses
  %i.qr = lshr i32 %.6333515, 8
  %i.qs = trunc i32 %i.qr to i8
  %i.qt = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.qs, ptr %.1, align 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.thread
  %.2 = phi ptr [ %i.qt, %bb.dq ], [ %i.qk, %.thread ]
  %i.qu = trunc i32 %.6333515 to i8
  store i8 %i.qu, ptr %.2, align 1
  br label %bb.ds

bb.ds:                                            ; preds = %.thread, %bb.dr
  %i.qv = trunc nsw i32 %i.qj to i8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 91
  store i8 %i.qv, ptr %i.qw, align 1
  %i.qx = shl nsw i32 %i.qj, 3
  %i.qy = lshr i32 %.6333515, %i.qx               ; 7 uses
  switch i32 %.8359511, label %.unreachabledefault [
    i32 3, label %bb.dt
end_hunk_2
