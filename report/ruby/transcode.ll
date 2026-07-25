inline.NumInlined: 403
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@rb_trans_conv:bb.a
  %i.ck = getelementptr i8, ptr %i.ch, i64 40
  store i32 3, ptr %i.ck, align 8, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph151, %bb.s
  store i32 %indvars150, ptr %6, align 4, !tbaa !7
  br label %bb.t

._crit_edge152:                                   ; preds = %bb.r, %.critedge
  store i32 -1, ptr %6, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge152, %.loopexit, %bb.f
  %.1 = phi i32 [ %i.cj, %.loopexit ], [ 3, %._crit_edge152 ], [ %., %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 7) i32 @transcode_restartable(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %4, i64 48         ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !87   ; 4 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = alloca i8, i64 %i.c, align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.d, ptr %i.a, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %i.d, i64 %i.c     ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !62
  %i.g = getelementptr i8, ptr %i.f, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %i.i = icmp slt i32 %i.h, 9
  %i.j = getelementptr i8, ptr %4, i64 56         ; 2 uses
  br i1 %i.i, label %ruby_nonempty_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.m = getelementptr i8, ptr %4, i64 40         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !88
  %i.o = getelementptr i8, ptr %i.l, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.d, ptr noundef nonnull readonly align 1 %i.o, i64 noundef range(i64 1, 0) %i.c, i1 noundef false) #19
  store i64 0, ptr %i.b, align 8, !tbaa !87
  %i.p = or i32 %5, 131072
  %i.q = call fastcc i32 @transcode_restartable0(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %i.e, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %i.p) ; 2 uses
  %.not36.not = icmp eq i32 %i.q, 3
  br i1 %.not36.not, label %.thread, label %bb.d

.thread:                                          ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.i

bb.d:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.r = load ptr, ptr %4, align 8, !tbaa !62
  %i.s = getelementptr i8, ptr %i.r, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69
  %i.u = icmp slt i32 %i.t, 9
  %i.v = getelementptr i8, ptr %4, i64 56         ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.z = ptrtoint ptr %i.e to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %.not.i37 = icmp eq ptr %i.e, %i.y
  br i1 %.not.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !88
  %i.ad = getelementptr i8, ptr %i.x, i64 %i.ac
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !87
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.af, ptr noundef nonnull readonly align 1 %i.y, i64 noundef range(i64 1, 0) %i.ab, i1 noundef false) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !87
  %i.ah = add i64 %i.ag, %i.ab
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.a
  %i.ai = call fastcc i32 @transcode_restartable0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i32 [ %i.ai, %bb.i ], [ %i.q, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 7) i32 @transcode_restartable0(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !62     ; 19 uses
  %i.b = getelementptr i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !29     ; 57 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 31 uses
  %i.f = getelementptr i8, ptr %4, i64 12         ; 35 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !186
  switch i32 %i.g, label %.loopexit [
    i32 34, label %bb.jl
    i32 33, label %bb.ii
    i32 32, label %bb.et
    i32 3, label %bb.t
    i32 4, label %bb.la
    i32 5, label %bb.aq
    i32 6, label %bb.lv
    i32 31, label %bb.el
    i32 8, label %bb.kd
    i32 9, label %bb.ax
    i32 10, label %bb.be
    i32 11, label %bb.bt
    i32 12, label %bb.cq
    i32 13, label %bb.fw
    i32 14, label %bb.gw
    i32 15, label %bb.cb
    i32 16, label %bb.cj
    i32 17, label %bb.cy
    i32 18, label %bb.dg
    i32 19, label %bb.do
    i32 20, label %bb.gn
    i32 21, label %bb.bm
    i32 22, label %bb.hz
    i32 23, label %bb.lr
    i32 24, label %bb.d
    i32 25, label %bb.aj
    i32 26, label %bb.jx
    i32 30, label %bb.ed
    i32 28, label %bb.fd
    i32 29, label %bb.dv
  ], !llvm.loop !193

.loopexit:                                        ; preds = %bb.l, %bb.gg, %bb.ga, %bb.hs, %bb.hg, %bb.je, %bb.is, %bb.ew, %bb.s, %bb.a, %bb.eu, %bb.dp, %bb.ck, %bb.bn, %bb.ay
  %.01129 = phi ptr [ %i.d, %bb.a ], [ %.31132, %bb.s ], [ %.291158, %bb.je ], [ %.61135, %bb.ay ], [ %.81137, %bb.bn ], [ %.111140, %bb.ck ], [ %.151144, %bb.dp ], [ %.191148, %bb.eu ], [ %.201149, %bb.ew ], [ %.221151, %bb.ga ], [ %.231152, %bb.gg ], [ %.251154, %bb.hg ], [ %.261155, %bb.hs ], [ %.281157, %bb.is ], [ %.21131, %bb.l ] ; 3 uses
  %.01093 = phi ptr [ %i.e, %bb.a ], [ %.31096, %bb.s ], [ %.291122, %bb.je ], [ %i.gs, %bb.ay ], [ %i.ir, %bb.bn ], [ %i.lp, %bb.ck ], [ %i.pn, %bb.dp ], [ %i.to, %bb.eu ], [ %.201113, %bb.ew ], [ %i.ye, %bb.ga ], [ %.231116, %bb.gg ], [ %i.acn, %bb.hg ], [ %.261119, %bb.hs ], [ %i.ahx, %bb.is ], [ %.21095, %bb.l ] ; 4 uses
  %i.h = getelementptr i8, ptr %4, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !194
  %i.k = getelementptr i8, ptr %4, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !195
  %i.l = and i32 %5, 262144
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.m = load ptr, ptr %1, align 8, !tbaa !29
  %.not1214 = icmp eq ptr %i.m, %.01093
  br i1 %.not1214, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 24, ptr %i.f, align 4, !tbaa !186
  store ptr %.01129, ptr %0, align 8, !tbaa !29
  store ptr %.01093, ptr %1, align 8, !tbaa !29
  br label %bb.ma

bb.d:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.11094 = phi ptr [ %.01093, %bb.b ], [ %.01093, %.loopexit ], [ %i.e, %bb.a ] ; 4 uses
  %.01091 = phi ptr [ %.01129, %bb.b ], [ %.01129, %.loopexit ], [ %i.d, %bb.a ] ; 8 uses
  %.not1215 = icmp ugt ptr %2, %.01091
  br i1 %.not1215, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %5, 131072
  %.not1230 = icmp eq i32 %i.n, 0
  br i1 %.not1230, label %bb.kx, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %i.f, align 4, !tbaa !186
  store ptr %.01091, ptr %0, align 8, !tbaa !29
  store ptr %.11094, ptr %1, align 8, !tbaa !29
  br label %bb.ma

bb.g:                                             ; preds = %bb.d
  %i.o = load i8, ptr %.01091, align 1, !tbaa !30 ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 32
  store i8 %i.o, ptr %i.p, align 8, !tbaa !196
  %.phi.trans.insert = getelementptr i8, ptr %4, i64 16
  %.pre1291 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !195
  br label %bb.h

bb.h:                                             ; preds = %bb.ar, %bb.g
  %i.q = phi i32 [ %.pre1291, %bb.g ], [ %i.fr, %bb.ar ]
  %i.r = phi i8 [ %i.o, %bb.g ], [ %i.fn, %bb.ar ] ; 3 uses
  %.01091.pn = phi ptr [ %.01091, %bb.g ], [ %.51134, %bb.ar ] ; 3 uses
  %.21095 = phi ptr [ %.11094, %bb.g ], [ %.51098, %bb.ar ] ; 21 uses
  %.1 = phi ptr [ %.01091, %bb.g ], [ %.4, %bb.ar ] ; 28 uses
  %.01091.pn1288 = ptrtoaddr ptr %.01091.pn to i64
  %.21131 = getelementptr i8, ptr %.01091.pn, i64 1 ; 20 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !197
  %i.v = getelementptr i8, ptr %i.a, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !198  ; 2 uses
  %i.x = lshr i32 %i.q, 2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = icmp ult i8 %i.r, %i.ad
  br i1 %i.af, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !30
  %i.ai = icmp ult i8 %i.ah, %i.r
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.z, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = lshr i32 %i.ak, 2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.w, i64 %i.am
  %i.ao = add nuw nsw i64 %i.s, 2
  %i.ap = sub nsw i64 %i.ao, %i.ae
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !30
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.an, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = zext i32 %i.au to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sink = phi i64 [ %i.av, %bb.j ], [ 7, %bb.i ], [ 7, %bb.h ] ; 2 uses
  %i.aw = getelementptr i8, ptr %4, i64 24
  store i64 %.sink, ptr %i.aw, align 8, !tbaa !199
  %i.ax = getelementptr i8, ptr %4, i64 24
  %i.ay = ptrtoint ptr %.1 to i64                 ; 3 uses
  %i.az = getelementptr i8, ptr %4, i64 40        ; 11 uses
  %i.ba = getelementptr i8, ptr %4, i64 56        ; 10 uses
  %.not.i.i = icmp eq ptr %.21131, %.1
  %i.bb = ptrtoint ptr %.21131 to i64
  %i.bc = sub i64 %i.bb, %i.ay                    ; 13 uses
  %i.bd = getelementptr i8, ptr %i.a, i64 104
  %i.be = getelementptr i8, ptr %4, i64 88        ; 4 uses
  %i.bf = getelementptr i8, ptr %i.a, i64 96
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %bb.k
  %i.bg = phi i64 [ %storemerge, %.backedge ], [ %.sink, %bb.k ] ; 3 uses
  %i.bh = and i64 %i.bg, 31
  switch i64 %i.bh, label %bb.kg [
    i64 1, label %bb.m
    i64 0, label %bb.ac
    i64 4, label %bb.ac
    i64 8, label %bb.ac
    i64 12, label %bb.ac
    i64 16, label %bb.ac
    i64 20, label %bb.ac
    i64 24, label %bb.ac
    i64 28, label %bb.ac
    i64 10, label %.loopexit
    i64 2, label %.loopexit1279
    i64 3, label %.loopexit1280
    i64 5, label %.loopexit1281
    i64 6, label %.loopexit1282
    i64 18, label %.loopexit1283
    i64 17, label %bb.ev
    i64 11, label %bb.ff
    i64 13, label %bb.fi
    i64 14, label %.loopexit1284
    i64 15, label %.loopexit1285
    i64 19, label %.loopexit1286
    i64 7, label %bb.jp
    i64 9, label %bb.ks
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr i8, ptr %4, i64 64        ; 9 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !200
  %i.bj = icmp ult ptr %.1, %.21131
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %4, i64 80        ; 6 uses
  %i.bl = add i64 %.01091.pn1288, 1
  %i.bm = sub i64 %i.bl, %i.ay                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.1, i64 %i.bm
  %xtraiter = and i64 %i.bm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bn = getelementptr i8, ptr %.1, i64 1
  %i.bo = load i8, ptr %.1, align 1, !tbaa !30
  %i.bp = load ptr, ptr %4, align 8, !tbaa !62
  %i.bq = getelementptr i8, ptr %i.bp, i64 64
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !70
  %i.bs = icmp slt i32 %i.br, 9
  br i1 %i.bs, label %.prol.loopexit.unr-lcssa, label %bb.n

bb.n:                                             ; preds = %.prol.preheader
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !30
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.n, %.prol.preheader
  %i.bu = phi ptr [ %i.bt, %bb.n ], [ %i.bk, %.prol.preheader ]
  %i.bv = load i64, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bi, align 8, !tbaa !200
  %i.bx = getelementptr i8, ptr %i.bu, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !30
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.010921287.unr = phi ptr [ %.1, %.lr.ph ], [ %i.bn, %.prol.loopexit.unr-lcssa ]
  %i.by = icmp eq ptr %.01091.pn, %.1
  br i1 %i.by, label %._crit_edge.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.r
  %.010921287 = phi ptr [ %i.ck, %bb.r ], [ %.010921287.unr, %.prol.loopexit ] ; 3 uses
  %i.bz = getelementptr i8, ptr %.010921287, i64 1
  %i.ca = load i8, ptr %.010921287, align 1, !tbaa !30
  %i.cb = load ptr, ptr %4, align 8, !tbaa !62
  %i.cc = getelementptr i8, ptr %i.cb, i64 64
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !70
  %i.ce = icmp slt i32 %i.cd, 9
  br i1 %i.ce, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.new
  %i.cf = load ptr, ptr %i.bk, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.new, %bb.o
  %i.cg = phi ptr [ %i.cf, %bb.o ], [ %i.bk, %.lr.ph.new ]
  %i.ch = load i64, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.bi, align 8, !tbaa !200
  %i.cj = getelementptr i8, ptr %i.cg, i64 %i.ch
  store i8 %i.ca, ptr %i.cj, align 1, !tbaa !30
  %i.ck = getelementptr i8, ptr %.010921287, i64 2 ; 2 uses
  %i.cl = load i8, ptr %i.bz, align 1, !tbaa !30
  %i.cm = load ptr, ptr %4, align 8, !tbaa !62
  %i.cn = getelementptr i8, ptr %i.cm, i64 64
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !70
  %i.cp = icmp slt i32 %i.co, 9
  br i1 %i.cp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.bk, align 8, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = phi ptr [ %i.cq, %bb.q ], [ %i.bk, %bb.p ]
  %i.cs = load i64, ptr %i.bi, align 8, !tbaa !200 ; 2 uses
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.bi, align 8, !tbaa !200
  %i.cu = getelementptr i8, ptr %i.cr, i64 %i.cs
  store i8 %i.cl, ptr %i.cu, align 1, !tbaa !30
  %exitcond.not.1 = icmp eq ptr %i.ck, %scevgep
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph.new, !llvm.loop !201

._crit_edge.loopexit:                             ; preds = %bb.r, %.prol.loopexit
  %.pre1317 = load i64, ptr %i.bi, align 8, !tbaa !200
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.cv = phi i64 [ %.pre1317, %._crit_edge.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.cw = getelementptr i8, ptr %4, i64 72
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !202
  store i64 0, ptr %i.bi, align 8, !tbaa !200
  br label %bb.s

bb.s:                                             ; preds = %bb.ab, %._crit_edge
  %i.cx = phi i64 [ %i.cv, %._crit_edge ], [ %.pre1321, %bb.ab ]
  %i.cy = phi i64 [ 0, %._crit_edge ], [ %.pre1319, %bb.ab ]
  %.31132 = phi ptr [ %.21131, %._crit_edge ], [ %.41133, %bb.ab ] ; 2 uses
  %.31096 = phi ptr [ %.21095, %._crit_edge ], [ %i.eh, %bb.ab ] ; 2 uses
  %.2 = phi ptr [ %.1, %._crit_edge ], [ %.3, %bb.ab ]
  %i.cz = icmp slt i64 %i.cy, %i.cx
  br i1 %i.cz, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.a, %bb.s
  %.41133 = phi ptr [ %.31132, %bb.s ], [ %i.d, %bb.a ] ; 3 uses
  %.41097 = phi ptr [ %.31096, %bb.s ], [ %i.e, %bb.a ] ; 4 uses
  %.3 = phi ptr [ %.2, %bb.s ], [ %i.d, %bb.a ]   ; 3 uses
  %i.da = ptrtoint ptr %3 to i64
  %i.db = ptrtoint ptr %.41097 to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp slt i64 %i.dc, 1
  br i1 %i.dd, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  store i32 3, ptr %i.f, align 4, !tbaa !186
  %i.de = ptrtoint ptr %.41133 to i64
  %i.df = ptrtoint ptr %.3 to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.di = load ptr, ptr %4, align 8, !tbaa !62
  %i.dj = getelementptr i8, ptr %i.di, i64 60
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !69
  %i.dl = icmp slt i32 %i.dk, 9
  %i.dm = getelementptr i8, ptr %4, i64 56        ; 2 uses
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.do = phi ptr [ %i.dn, %bb.w ], [ %i.dm, %bb.v ]
  %i.dp = getelementptr i8, ptr %4, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !88
  %i.dr = getelementptr i8, ptr %i.do, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.dr, ptr noundef nonnull align 1 %.3, i64 noundef %i.dg, i1 noundef false) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  store ptr %.41133, ptr %0, align 8, !tbaa !29
  store ptr %.41097, ptr %1, align 8, !tbaa !29
  %i.ds = getelementptr i8, ptr %4, i64 40        ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !88
  %i.du = add i64 %i.dt, %i.dg
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !88
  br label %bb.ma

bb.z:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %4, align 8, !tbaa !62
  %i.dw = getelementptr i8, ptr %i.dv, i64 64
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !70
  %i.dy = icmp slt i32 %i.dx, 9
  %i.dz = getelementptr i8, ptr %4, i64 80        ; 2 uses
  br i1 %i.dy, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.eb = phi ptr [ %i.ea, %bb.aa ], [ %i.dz, %bb.z ]
  %i.ec = getelementptr i8, ptr %4, i64 64        ; 3 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !200 ; 2 uses
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !200
  %i.ef = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !30
  %i.eh = getelementptr i8, ptr %.41097, i64 1
  store i8 %i.eg, ptr %.41097, align 1, !tbaa !30
  %.pre1319 = load i64, ptr %i.ec, align 8, !tbaa !200
  %.phi.trans.insert1320 = getelementptr i8, ptr %4, i64 72
  %.pre1321 = load i64, ptr %.phi.trans.insert1320, align 8, !tbaa !202
  br label %bb.s, !llvm.loop !203

bb.ac:                                            ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.ei = and i32 %5, 262144
  %.not1226 = icmp eq i32 %i.ei, 0
  br i1 %.not1226, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = load ptr, ptr %1, align 8, !tbaa !29
  %.not1227 = icmp eq ptr %i.ej, %.21095
  br i1 %.not1227, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 25, ptr %i.f, align 4, !tbaa !186
  %i.ek = icmp sgt i64 %i.bc, 0
  br i1 %i.ek, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %4, align 8, !tbaa !62
  %i.em = getelementptr i8, ptr %i.el, i64 60
  %i.en = load i32, ptr %i.em, align 4, !tbaa !69
  %i.eo = icmp slt i32 %i.en, 9
  br i1 %i.eo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ep = load ptr, ptr %i.ba, align 8, !tbaa !30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.eq = phi ptr [ %i.ep, %bb.ag ], [ %i.ba, %bb.af ]
  %i.er = load i64, ptr %i.az, align 8, !tbaa !88
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.es, ptr noundef nonnull align 1 %.1, i64 noundef %i.bc, i1 noundef false) #19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  store ptr %.21131, ptr %0, align 8, !tbaa !29
  store ptr %.21095, ptr %1, align 8, !tbaa !29
  %i.et = load i64, ptr %i.az, align 8, !tbaa !88
  %i.eu = add i64 %i.et, %i.bc
  store i64 %i.eu, ptr %i.az, align 8, !tbaa !88
  br label %bb.ma

bb.aj:                                            ; preds = %bb.ac, %bb.ad, %bb.a, %bb.aq
  %.51134 = phi ptr [ %.21131, %bb.ad ], [ %.21131, %bb.ac ], [ %i.d, %bb.aq ], [ %i.d, %bb.a ] ; 6 uses
  %.51098 = phi ptr [ %.21095, %bb.ad ], [ %.21095, %bb.ac ], [ %i.e, %bb.aq ], [ %i.e, %bb.a ] ; 3 uses
  %.4 = phi ptr [ %.1, %bb.ad ], [ %.1, %bb.ac ], [ %i.d, %bb.aq ], [ %i.d, %bb.a ] ; 4 uses
  %.not1228 = icmp ult ptr %.51134, %2
  br i1 %.not1228, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = and i32 %5, 131072
  %.not1229 = icmp eq i32 %i.ev, 0
  %i.ew = ptrtoint ptr %.51134 to i64
  %i.ex = ptrtoint ptr %.4 to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 5 uses
  %i.ez = icmp sgt i64 %i.ey, 0                   ; 2 uses
  br i1 %.not1229, label %bb.kn, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.f, align 4, !tbaa !186
  br i1 %i.ez, label %bb.am, label %bb.ap

end_hunk_0
