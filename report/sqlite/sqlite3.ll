Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@releasePage:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !900  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !901
  %i.q = add i32 %i.p, -1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.t = load i64, ptr %i.s, align 8, !tbaa !630
  %i.u = mul nsw i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !894
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !863
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !903
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %i.n, i64 noundef %i.u, ptr noundef %i.w) #57, !inline_history !195 ; 0 uses
  br label %releasePageNotNull.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val)
  br label %releasePageNotNull.exit

releasePageNotNull.exit:                          ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @releasePageNotNull(ptr %.112.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.112.val, i64 52
  %i.b = load i16, ptr %i.a, align 4, !tbaa !895
  %i.c = and i16 %i.b, 32
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.112.val, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !896  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !897
  %i.h = add nsw i32 %i.g, -1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !897
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !898
  %i.k = getelementptr inbounds nuw i8, ptr %.112.val, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !899
  store ptr %.112.val, ptr %i.i, align 8, !tbaa !898
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !900  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.112.val, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !901
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.s = load i64, ptr %i.r, align 8, !tbaa !630
  %i.t = mul nsw i64 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %.112.val, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !894
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !863
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !903
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.m, i64 noundef %i.t, ptr noundef %i.v) #57, !inline_history !51 ; 0 uses
  br label %sqlite3PagerUnrefNotNull.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.112.val)
  br label %sqlite3PagerUnrefNotNull.exit

sqlite3PagerUnrefNotNull.exit:                    ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @allocateBtreePage(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 3) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !987  ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 8 uses
  %.val = load i32, ptr %i.g, align 8, !tbaa !997 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !989
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %.not = icmp ult i32 %i.l, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79763, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit338

bb.c:                                             ; preds = %bb.a
  %.not257 = icmp eq i32 %i.k, 0
  br i1 %.not257, label %bb.cr, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %4, label %bb.h [
    i8 1, label %bb.e
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not263 = icmp ugt i32 %3, %.val
  br i1 %.not263, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  %i.m = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %.not264 = icmp eq i32 %i.m, 0
  %i.n = load i8, ptr %i.b, align 1
  %i.o = icmp eq i8 %i.n, 2
  %spec.select = zext i1 %i.o to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #57
  br i1 %.not264, label %bb.h, label %releasePage.exit338

bb.g:                                             ; preds = %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.e, %bb.f
  %.2195 = phi i8 [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1010 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !896  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.u = load i16, ptr %i.t, align 4, !tbaa !895
  %i.v = and i16 %i.u, 4
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1002
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !901
  %.not13.i = icmp ult i32 %i.x, %i.z
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !992
  %.not15.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.q), !inline_history !1003
  br label %sqlite3PagerWrite.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1004 ; 2 uses
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %bb.m, label %releasePage.exit338

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1005
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !630
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.q), !inline_history !1003
  br label %sqlite3PagerWrite.exit

bb.o:                                             ; preds = %bb.m
  %i.am = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.q), !inline_history !1003
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.k, %bb.n, %bb.o
  %.0.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %.not265 = icmp eq i32 %.0.i, 0
  br i1 %.not265, label %sqlite3PagerWrite.exit.thread, label %releasePage.exit338

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.j, %sqlite3PagerWrite.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !989 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ap = add i32 %i.l, -1                        ; 4 uses
  %i.aq = lshr i32 %i.ap, 24
  %i.ar = trunc nuw i32 %i.aq to i8
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !733
  %i.as = lshr i32 %i.ap, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 37
  store i8 %i.at, ptr %i.au, align 1, !tbaa !733
  %i.av = lshr i32 %i.ap, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 38
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !733
  %i.ay = trunc i32 %i.ap to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 39
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !733
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = icmp eq i8 %4, 2                        ; 3 uses
  %.not271 = icmp eq i32 %3, 0
  %i.bc = getelementptr i8, ptr %0, i64 96
  br label %bb.p

bb.p:                                             ; preds = %releasePage.exit, %sqlite3PagerWrite.exit.thread
  %i.bd = phi ptr [ null, %sqlite3PagerWrite.exit.thread ], [ %i.oa, %releasePage.exit ] ; 20 uses
  %.3196 = phi i8 [ %.2195, %sqlite3PagerWrite.exit.thread ], [ 1, %releasePage.exit ] ; 2 uses
  %.0190 = phi i32 [ 0, %sqlite3PagerWrite.exit.thread ], [ %i.cn, %releasePage.exit ] ; 2 uses
  %.not266 = icmp eq ptr %i.bd, null              ; 4 uses
  br i1 %.not266, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !989 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !733
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw i32 %i.bh, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !733
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 16
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !733
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !989 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 33
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 34
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink568.in = phi ptr [ %i.cj, %bb.r ], [ %i.bt, %bb.q ]
  %.sink = phi i32 [ %i.ci, %bb.r ], [ %i.bs, %bb.q ]
  %.sink568 = load i8, ptr %.sink568.in, align 1, !tbaa !733
  %i.ck = zext i8 %.sink568 to i32
  %i.cl = or disjoint i32 %.sink, %i.ck           ; 6 uses
  %i.cm = icmp ugt i32 %i.cl, %.val
  br i1 %i.cm, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = add i32 %.0190, 1
  %i.co = icmp ugt i32 %.0190, %i.l
  br i1 %i.co, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.s, %bb.t
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79819, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %releasePage.exit334

bb.u:                                             ; preds = %bb.t
  %i.cp = call fastcc i32 @btreeGetUnusedPage(ptr noundef %0, i32 noundef %i.cl, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not267 = icmp eq i32 %i.cp, 0
  br i1 %.not267, label %bb.v, label %releasePage.exit334

bb.v:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !1514 ; 22 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80 ; 7 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !989 ; 10 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 7
  %i.cx = load i32, ptr %i.ct, align 1            ; 3 uses
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.cx) ; 6 uses
  %i.cz = icmp ne i32 %i.cx, 0                    ; 3 uses
  %i.da = icmp ne i8 %.3196, 0                    ; 3 uses
  %or.cond = or i1 %i.da, %i.cz
  br i1 %or.cond, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1010 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !896 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !895
  %i.dh = and i16 %i.dg, 4
  %.not.i288 = icmp eq i16 %i.dh, 0
  br i1 %.not.i288, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !1002
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !901
  %.not13.i289 = icmp ult i32 %i.dj, %i.dl
  br i1 %.not13.i289, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !992
  %.not15.i290 = icmp eq i32 %i.dn, 0
  br i1 %.not15.i290, label %sqlite3PagerWrite.exit293.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.dc), !inline_history !1003
  br label %sqlite3PagerWrite.exit293

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !1004 ; 2 uses
  %.not14.i292 = icmp eq i32 %i.dq, 0
  br i1 %.not14.i292, label %bb.ab, label %.thread397.thread518

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1005
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !630
  %i.dv = trunc i64 %i.du to i32
  %i.dw = icmp ugt i32 %i.ds, %i.dv
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.dc), !inline_history !1003
  br label %sqlite3PagerWrite.exit293

bb.ad:                                            ; preds = %bb.ab
  %i.dy = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.dc), !inline_history !1003
  br label %sqlite3PagerWrite.exit293

sqlite3PagerWrite.exit293:                        ; preds = %bb.z, %bb.ac, %bb.ad
  %.0.i291 = phi i32 [ %i.do, %bb.z ], [ %i.dy, %bb.ad ], [ %i.dx, %bb.ac ] ; 2 uses
  %.not268 = icmp eq i32 %.0.i291, 0
  br i1 %.not268, label %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, label %.thread397.thread518

sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge: ; preds = %sqlite3PagerWrite.exit293
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !989
  br label %sqlite3PagerWrite.exit293.thread

sqlite3PagerWrite.exit293.thread:                 ; preds = %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, %bb.y
  %i.dz = phi ptr [ %.pre, %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge ], [ %i.cs, %bb.y ]
  store i32 %i.cl, ptr %2, align 4, !tbaa !570
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !989
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i32, ptr %i.dz, align 1
  store i32 %i.ec, ptr %i.eb, align 1
  store ptr %i.cq, ptr %1, align 8, !tbaa !1514
  br label %.thread391.sink.split

bb.ae:                                            ; preds = %bb.v
  %i.ed = load i32, ptr %i.ba, align 8, !tbaa !1061
  %i.ee = lshr i32 %i.ed, 2
  %i.ef = add nsw i32 %i.ee, -2
  %i.eg = icmp ugt i32 %i.cy, %i.ef
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79848, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread397.thread518

bb.ag:                                            ; preds = %bb.ae
  %.not472 = xor i1 %i.da, true
  br i1 %i.da, label %bb.ah, label %bb.bp

bb.ah:                                            ; preds = %bb.ag
  %i.eh = icmp eq i32 %3, %i.cl
  %i.ei = icmp ult i32 %i.cl, %3
  %or.cond9 = and i1 %i.bb, %i.ei
  %or.cond445.a = or i1 %i.eh, %or.cond9
  br i1 %or.cond445.a, label %bb.ai, label %bb.bp

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.cl, ptr %2, align 4, !tbaa !570
  store ptr %i.cq, ptr %1, align 8, !tbaa !1514
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1010 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !896 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 52
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !895
  %i.ep = and i16 %i.eo, 4
  %.not.i294 = icmp eq i16 %i.ep, 0
  br i1 %.not.i294, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1002
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.et = load i32, ptr %i.es, align 8, !tbaa !901
  %.not13.i295 = icmp ult i32 %i.er, %i.et
  br i1 %.not13.i295, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !992
  %.not15.i296 = icmp eq i32 %i.ev, 0
  br i1 %.not15.i296, label %sqlite3PagerWrite.exit299.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ek), !inline_history !1003
  br label %sqlite3PagerWrite.exit299

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !1004 ; 2 uses
  %.not14.i298 = icmp eq i32 %i.ey, 0
  br i1 %.not14.i298, label %bb.an, label %.thread397.thread518

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 184
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !1005
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !630
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp ugt i32 %i.fa, %i.fd
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ek), !inline_history !1003
  br label %sqlite3PagerWrite.exit299

bb.ap:                                            ; preds = %bb.an
  %i.fg = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.ek), !inline_history !1003
  br label %sqlite3PagerWrite.exit299

sqlite3PagerWrite.exit299:                        ; preds = %bb.al, %bb.ao, %bb.ap
  %.0.i297 = phi i32 [ %i.ew, %bb.al ], [ %i.fg, %bb.ap ], [ %i.ff, %bb.ao ] ; 2 uses
  %.not276 = icmp eq i32 %.0.i297, 0
  br i1 %.not276, label %sqlite3PagerWrite.exit299.thread, label %.thread397.thread518

sqlite3PagerWrite.exit299.thread:                 ; preds = %bb.ak, %sqlite3PagerWrite.exit299
  br i1 %i.cz, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %sqlite3PagerWrite.exit299.thread
  br i1 %.not266, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !989
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !989
  %i.fk = load i32, ptr %i.fj, align 1
  store i32 %i.fk, ptr %i.fi, align 1
  br label %.thread391.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1010 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !896 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 52
  %i.fq = load i16, ptr %i.fp, align 4, !tbaa !895
  %i.fr = and i16 %i.fq, 4
  %.not.i300 = icmp eq i16 %i.fr, 0
  br i1 %.not.i300, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !1002
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !901
  %.not13.i301 = icmp ult i32 %i.ft, %i.fv
  br i1 %.not13.i301, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !992
  %.not15.i302 = icmp eq i32 %i.fx, 0
  br i1 %.not15.i302, label %sqlite3PagerWrite.exit305.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fy = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.fm), !inline_history !1003
  br label %sqlite3PagerWrite.exit305

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !1004 ; 2 uses
  %.not14.i304 = icmp eq i32 %i.ga, 0
  br i1 %.not14.i304, label %bb.ax, label %.thread397.thread518

bb.ax:                                            ; preds = %bb.aw
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 184
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !1005
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 200
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !630
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = icmp ugt i32 %i.gc, %i.gf
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gh = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.fm), !inline_history !1003
  br label %sqlite3PagerWrite.exit305

bb.az:                                            ; preds = %bb.ax
  %i.gi = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.fm), !inline_history !1003
  br label %sqlite3PagerWrite.exit305

sqlite3PagerWrite.exit305:                        ; preds = %bb.av, %bb.ay, %bb.az
  %.0.i303 = phi i32 [ %i.fy, %bb.av ], [ %i.gi, %bb.az ], [ %i.gh, %bb.ay ] ; 2 uses
  %.not280 = icmp eq i32 %.0.i303, 0
  br i1 %.not280, label %sqlite3PagerWrite.exit305.thread, label %.thread397.thread518

sqlite3PagerWrite.exit305.thread:                 ; preds = %bb.au, %sqlite3PagerWrite.exit305
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !989
  %i.gl = load ptr, ptr %i.cr, align 8, !tbaa !989
  %i.gm = load i32, ptr %i.gl, align 1
  store i32 %i.gm, ptr %i.gk, align 1
  br label %.thread391.sink.split

bb.ba:                                            ; preds = %sqlite3PagerWrite.exit299.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #57
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !989 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !733 ; 3 uses
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 9
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !733 ; 3 uses
  %i.gu = zext i8 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 16
  %i.gw = or disjoint i32 %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 10
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !733 ; 3 uses
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 11
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !733 ; 3 uses
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.gw, %i.ha
  %i.hf = or disjoint i32 %i.he, %i.hd            ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, %.val
  br i1 %i.hg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread369

bb.bc:                                            ; preds = %bb.ba
  %i.hh = call fastcc i32 @btreeGetUnusedPage(ptr noundef nonnull %0, i32 noundef %i.hf, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %.not277 = icmp eq i32 %i.hh, 0
  br i1 %.not277, label %bb.bd, label %.thread369

bb.bd:                                            ; preds = %bb.bc
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !1514 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1010 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !896 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 52
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !895
  %i.hp = and i16 %i.ho, 4
  %.not.i306 = icmp eq i16 %i.hp, 0
  br i1 %.not.i306, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !1002
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !901
  %.not13.i307 = icmp ult i32 %i.hr, %i.ht
  br i1 %.not13.i307, label %bb.bh, label %bb.bf

end_hunk_0
begin_hunk_1_@allocateBtreePage:bb.a
  br i1 %.not15.i308, label %sqlite3PagerWrite.exit311.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.hk), !inline_history !1003
  br label %sqlite3PagerWrite.exit311

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !1004 ; 2 uses
  %.not14.i310 = icmp eq i32 %i.hy, 0
  br i1 %.not14.i310, label %bb.bi, label %sqlite3PagerWrite.exit311.thread365

bb.bi:                                            ; preds = %bb.bh
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !1005
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !630
  %i.id = trunc i64 %i.ic to i32
  %i.ie = icmp ugt i32 %i.ia, %i.id
  br i1 %i.ie, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.if = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.hk), !inline_history !1003
  br label %sqlite3PagerWrite.exit311

bb.bk:                                            ; preds = %bb.bi
  %i.ig = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.hk), !inline_history !1003
  br label %sqlite3PagerWrite.exit311

sqlite3PagerWrite.exit311:                        ; preds = %bb.bg, %bb.bj, %bb.bk
  %.0.i309 = phi i32 [ %i.hw, %bb.bg ], [ %i.ig, %bb.bk ], [ %i.if, %bb.bj ] ; 2 uses
  %.not278 = icmp eq i32 %.0.i309, 0
  br i1 %.not278, label %sqlite3PagerWrite.exit311.thread, label %sqlite3PagerWrite.exit311.thread365

sqlite3PagerWrite.exit311.thread365:              ; preds = %bb.bh, %sqlite3PagerWrite.exit311
  %.0.i309368 = phi i32 [ %.0.i309, %sqlite3PagerWrite.exit311 ], [ %i.hy, %bb.bh ]
  tail call fastcc void @releasePage(ptr noundef nonnull %i.hi)
  br label %.thread369

sqlite3PagerWrite.exit311.thread:                 ; preds = %bb.bf, %sqlite3PagerWrite.exit311
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hi, i64 80 ; 3 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !989
  %i.ij = load ptr, ptr %i.cr, align 8, !tbaa !989
  %i.ik = load i32, ptr %i.ij, align 1
  store i32 %i.ik, ptr %i.ii, align 1
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !989 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = add i32 %i.cy, -1                       ; 5 uses
  %i.io = lshr i32 %i.in, 24
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !733
  %i.iq = lshr i32 %i.in, 16
  %i.ir = trunc i32 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 5
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !733
  %i.it = lshr i32 %i.in, 8
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !733
  %i.iw = trunc i32 %i.in to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !733
  %i.iy = load ptr, ptr %i.ih, align 8, !tbaa !989
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.cr, align 8, !tbaa !989
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.jc = shl i32 %i.in, 2
  %i.jd = zext i32 %i.jc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull align 1 %i.jb, i64 %i.jd, i1 false)
  tail call fastcc void @releasePage(ptr noundef nonnull %i.hi)
  br i1 %.not266, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %sqlite3PagerWrite.exit311.thread
  %i.je = load ptr, ptr %i.h, align 8, !tbaa !989 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  store i8 %i.gp, ptr %i.jf, align 1, !tbaa !733
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 33
  store i8 %i.gt, ptr %i.jg, align 1, !tbaa !733
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 34
  store i8 %i.gy, ptr %i.jh, align 1, !tbaa !733
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 35
  store i8 %i.hc, ptr %i.ji, align 1, !tbaa !733
  br label %bb.bo

bb.bm:                                            ; preds = %sqlite3PagerWrite.exit311.thread
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !1010
  %i.jl = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.jk) ; 2 uses
  %.not279 = icmp eq i32 %i.jl, 0
  br i1 %.not279, label %bb.bn, label %.thread369

bb.bn:                                            ; preds = %bb.bm
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !989 ; 4 uses
  store i8 %i.gp, ptr %i.jn, align 1, !tbaa !733
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store i8 %i.gt, ptr %i.jo, align 1, !tbaa !733
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  store i8 %i.gy, ptr %i.jp, align 1, !tbaa !733
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  store i8 %i.hc, ptr %i.jq, align 1, !tbaa !733
  br label %bb.bo

.thread369:                                       ; preds = %bb.bm, %bb.bc, %bb.bb, %sqlite3PagerWrite.exit311.thread365
  %.2209.ph = phi i32 [ 11, %bb.bb ], [ %.0.i309368, %sqlite3PagerWrite.exit311.thread365 ], [ %i.jl, %bb.bm ], [ %i.hh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %.thread397.thread518

bb.bo:                                            ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #57
  br label %.thread391.sink.split

bb.bp:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.cz, label %bb.bq, label %.thread391

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not271, label %.loopexit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %i.bb, label %.preheader.preheader, label %bb.bt

.preheader.preheader:                             ; preds = %bb.br
  %wide.trip.count474 = zext i32 %i.cy to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.bs
  %indvars.iv471 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next472, %bb.bs ] ; 3 uses
  %i.jr = shl i64 %indvars.iv471, 2
  %i.js = add i64 %i.jr, 8
  %i.jt = and i64 %i.js, 4294967292
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 1
  %i.jw = tail call i32 @llvm.bswap.i32(i32 %i.jv)
  %.not272 = icmp ugt i32 %i.jw, %3
  br i1 %.not272, label %bb.bs, label %.loopexit.loopexit.split.loop.exit

bb.bs:                                            ; preds = %.preheader
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %.loopexit, label %.preheader, !llvm.loop !3752

bb.bt:                                            ; preds = %bb.br
  %.not447 = icmp eq i32 %i.cx, 16777216
  br i1 %.not447, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bt
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.jy = load i32, ptr %i.jx, align 1
  %i.jz = tail call i32 @llvm.bswap.i32(i32 %i.jy)
  %i.ka = sub i32 %i.jz, %3                       ; 3 uses
  %i.kb = icmp slt i32 %i.ka, 0
  %spec.select.i = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.ka)
  %.0.i312 = select i1 %i.kb, i32 %spec.select.i, i32 %i.ka
  %wide.trip.count = zext i32 %i.cy to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0443 = phi i32 [ %.0.i312, %.lr.ph.preheader ], [ %spec.select283, %.lr.ph ] ; 2 uses
  %.0188441 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select282, %.lr.ph ]
  %i.kc = trunc nuw i64 %indvars.iv to i32
  %i.kd = shl i64 %indvars.iv, 2
  %i.ke = add i64 %i.kd, 8
  %i.kf = and i64 %i.ke, 4294967292
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 1
  %i.ki = tail call i32 @llvm.bswap.i32(i32 %i.kh)
  %i.kj = sub i32 %i.ki, %3                       ; 3 uses
  %spec.select.i313 = tail call i32 @llvm.ssub.sat.i32(i32 0, i32 %i.kj)
  %i.kk = icmp slt i32 %i.kj, 0
  %.0.i314 = select i1 %i.kk, i32 %spec.select.i313, i32 %i.kj ; 2 uses
  %i.kl = icmp samesign ult i32 %.0.i314, %.0443
  %spec.select282 = select i1 %i.kl, i32 %i.kc, i32 %.0188441 ; 2 uses
  %spec.select283 = tail call i32 @llvm.umin.i32(i32 %.0.i314, i32 %.0443)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3753

.loopexit.loopexit.split.loop.exit:               ; preds = %.preheader
  %i.km = trunc nuw i64 %indvars.iv471 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.bs, %.loopexit.loopexit.split.loop.exit, %bb.bt, %bb.bq
  %.3 = phi i32 [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bs ], [ %i.km, %.loopexit.loopexit.split.loop.exit ], [ %spec.select282, %.lr.ph ] ; 2 uses
  %i.kn = shl i32 %.3, 2
  %i.ko = add i32 %i.kn, 8
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.kp ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 1
  %i.ks = tail call i32 @llvm.bswap.i32(i32 %i.kr) ; 5 uses
  %i.kt = icmp ugt i32 %i.ks, %.val
  %i.ku = icmp ult i32 %i.ks, 2
  %or.cond11 = or i1 %i.kt, %i.ku
  br i1 %or.cond11, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 79947, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread397

bb.bv:                                            ; preds = %.loopexit
  %5 = icmp eq i32 %i.ks, %3
  %6 = icmp ult i32 %i.ks, %3
  %or.cond14 = and i1 %i.bb, %6
  %7 = or i1 %5, %or.cond14
  %or.cond445 = or i1 %7, %.not472
  br i1 %or.cond445, label %bb.bw, label %.thread391

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.ks, ptr %2, align 4, !tbaa !570
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1010 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !896 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 52
  %i.la = load i16, ptr %i.kz, align 4, !tbaa !895
  %i.lb = and i16 %i.la, 4
  %.not.i315 = icmp eq i16 %i.lb, 0
  br i1 %.not.i315, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !1002
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !901
  %.not13.i316 = icmp ult i32 %i.ld, %i.lf
  br i1 %.not13.i316, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 128
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !992
  %.not15.i317 = icmp eq i32 %i.lh, 0
  br i1 %.not15.i317, label %sqlite3PagerWrite.exit320.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.li = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.kw), !inline_history !1003
  br label %sqlite3PagerWrite.exit320

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !1004 ; 2 uses
  %.not14.i319 = icmp eq i32 %i.lk, 0
  br i1 %.not14.i319, label %bb.cb, label %.thread397.thread518

bb.cb:                                            ; preds = %bb.ca
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 184
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !1005
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 200
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !630
  %i.lp = trunc i64 %i.lo to i32
  %i.lq = icmp ugt i32 %i.lm, %i.lp
  br i1 %i.lq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lr = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.kw), !inline_history !1003
  br label %sqlite3PagerWrite.exit320

bb.cd:                                            ; preds = %bb.cb
  %i.ls = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.kw), !inline_history !1003
  br label %sqlite3PagerWrite.exit320

sqlite3PagerWrite.exit320:                        ; preds = %bb.bz, %bb.cc, %bb.cd
  %.0.i318 = phi i32 [ %i.li, %bb.bz ], [ %i.ls, %bb.cd ], [ %i.lr, %bb.cc ] ; 2 uses
  %.not273 = icmp eq i32 %.0.i318, 0
  br i1 %.not273, label %sqlite3PagerWrite.exit320.thread, label %.thread397.thread518

sqlite3PagerWrite.exit320.thread:                 ; preds = %bb.by, %sqlite3PagerWrite.exit320
  %i.lt = add i32 %i.cy, -1                       ; 5 uses
  %i.lu = icmp ult i32 %.3, %i.lt
  br i1 %i.lu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %sqlite3PagerWrite.exit320.thread
  %i.lv = shl i32 %i.cy, 2
  %i.lw = add i32 %i.lv, 4
  %i.lx = zext i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 1
  store i32 %i.lz, ptr %i.kq, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %sqlite3PagerWrite.exit320.thread
  %i.ma = lshr i32 %i.lt, 24
  %i.mb = trunc nuw i32 %i.ma to i8
  store i8 %i.mb, ptr %i.ct, align 1, !tbaa !733
  %i.mc = lshr i32 %i.lt, 16
  %i.md = trunc i32 %i.mc to i8
  store i8 %i.md, ptr %i.cu, align 1, !tbaa !733
  %i.me = lshr i32 %i.lt, 8
  %i.mf = trunc i32 %i.me to i8
  store i8 %i.mf, ptr %i.cv, align 1, !tbaa !733
  %i.mg = trunc i32 %i.lt to i8
  store i8 %i.mg, ptr %i.cw, align 1, !tbaa !733
  %i.mh = load i32, ptr %2, align 4, !tbaa !570   ; 3 uses
  %.val287 = load ptr, ptr %i.bc, align 8, !tbaa !1054 ; 3 uses
  %.not.i321 = icmp eq ptr %.val287, null
  br i1 %.not.i321, label %btreeGetHasContent.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val.i = load i32, ptr %.val287, align 8, !tbaa !1371 ; 2 uses
  %i.mi = icmp ugt i32 %i.mh, %.val.i
  br i1 %i.mi, label %btreeGetHasContent.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mj = add i32 %i.mh, -1                       ; 2 uses
  %.not.i.i = icmp ult i32 %i.mj, %.val.i
  br i1 %.not.i.i, label %.preheader.i.i, label %btreeGetHasContent.exit

.preheader.i.i:                                   ; preds = %bb.ch, %bb.ci
  %.025.i.i = phi ptr [ %i.mr, %bb.ci ], [ %.val287, %bb.ch ] ; 5 uses
  %.024.i.i = phi i32 [ %i.mn, %bb.ci ], [ %i.mj, %bb.ch ]
  %.024.fr.i.i = freeze i32 %.024.i.i             ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !1372 ; 3 uses
  %.not30.i.i = icmp eq i32 %i.ml, 0
  br i1 %.not30.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i.i
  %i.mm = udiv i32 %.024.fr.i.i, %i.ml
  %i.mn = urem i32 %.024.fr.i.i, %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !733 ; 2 uses
  %.not32.not.i.i = icmp eq ptr %i.mr, null
  br i1 %.not32.not.i.i, label %btreeGetHasContent.exit, label %.preheader.i.i

bb.cj:                                            ; preds = %.preheader.i.i
  %i.ms = load i32, ptr %.025.i.i, align 8, !tbaa !1371
  %i.mt = icmp ult i32 %i.ms, 3969
  br i1 %i.mt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mu = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.mv = lshr i32 %.024.fr.i.i, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !733
  %i.mz = zext i8 %i.my to i32
  %i.na = and i32 %.024.fr.i.i, 7
  %i.nb = lshr i32 %i.mz, %i.na
  %i.nc = and i32 %i.nb, 1
  %i.nd = xor i32 %i.nc, 1
  br label %btreeGetHasContent.exit

bb.cl:                                            ; preds = %bb.cj
  %i.ne = add i32 %.024.fr.i.i, 1
  %i.nf = urem i32 %.024.fr.i.i, 124              ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16 ; 2 uses
  %i.nh = zext nneg i32 %i.nf to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !733 ; 2 uses
  %.not3136.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not3136.i.i, label %btreeGetHasContent.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cl, %bb.cm
  %i.nk = phi i32 [ %i.nr, %bb.cm ], [ %i.nj, %bb.cl ]
  %.037.i.i = phi i32 [ %i.no, %bb.cm ], [ %i.nf, %bb.cl ]
  %i.nl = icmp eq i32 %i.nk, %i.ne
  br i1 %i.nl, label %btreeGetHasContent.exit, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i
  %i.nm = add i32 %.037.i.i, 1                    ; 2 uses
  %i.nn = icmp eq i32 %i.nm, 124
  %i.no = select i1 %i.nn, i32 0, i32 %i.nm       ; 2 uses
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !733 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not31.i.i, label %btreeGetHasContent.exit, label %.lr.ph.i.i, !llvm.loop !125

btreeGetHasContent.exit:                          ; preds = %bb.ci, %.lr.ph.i.i, %bb.cm, %bb.cf, %bb.cg, %bb.ch, %bb.ck, %bb.cl
  %i.ns = phi i32 [ 1, %bb.cf ], [ 0, %bb.cg ], [ 1, %bb.ch ], [ 0, %.lr.ph.i.i ], [ %i.nd, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.ci ]
  %i.nt = tail call fastcc i32 @btreeGetUnusedPage(ptr noundef %0, i32 noundef %i.mh, ptr noundef %1, i32 noundef %i.ns) ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.cn, label %.thread391

bb.cn:                                            ; preds = %btreeGetHasContent.exit
  %i.nv = load ptr, ptr %1, align 8, !tbaa !1514
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 112
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !1010
  %i.ny = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.nx) ; 2 uses
  %.not275 = icmp eq i32 %i.ny, 0
  br i1 %.not275, label %.thread391, label %.split

.split:                                           ; preds = %bb.cn
  %i.nz = load ptr, ptr %1, align 8, !tbaa !1514
  tail call fastcc void @releasePage(ptr noundef %i.nz)
  br label %.thread391.sink.split

.thread391.sink.split:                            ; preds = %sqlite3PagerWrite.exit305.thread, %bb.ar, %bb.bo, %sqlite3PagerWrite.exit293.thread, %.split
  %.sink569 = phi ptr [ %1, %.split ], [ %i.a, %sqlite3PagerWrite.exit293.thread ], [ %i.a, %bb.bo ], [ %i.a, %bb.ar ], [ %i.a, %sqlite3PagerWrite.exit305.thread ]
  %.ph = phi ptr [ %i.cq, %.split ], [ null, %sqlite3PagerWrite.exit293.thread ], [ null, %bb.bo ], [ null, %bb.ar ], [ null, %sqlite3PagerWrite.exit305.thread ]
  %.8.ph = phi i32 [ %i.ny, %.split ], [ 0, %sqlite3PagerWrite.exit293.thread ], [ 0, %bb.bo ], [ 0, %bb.ar ], [ 0, %sqlite3PagerWrite.exit305.thread ]
  store ptr null, ptr %.sink569, align 8, !tbaa !1514
  br label %.thread391

.thread391:                                       ; preds = %.thread391.sink.split, %bb.bv, %bb.cn, %btreeGetHasContent.exit, %bb.bp
  %i.oa = phi ptr [ %i.cq, %bb.bv ], [ %i.cq, %btreeGetHasContent.exit ], [ %i.cq, %bb.bp ], [ %i.cq, %bb.cn ], [ %.ph, %.thread391.sink.split ] ; 2 uses
  %.8 = phi i32 [ 0, %bb.bv ], [ %i.nt, %btreeGetHasContent.exit ], [ 0, %bb.bp ], [ 0, %bb.cn ], [ %.8.ph, %.thread391.sink.split ]
  %.7 = phi i8 [ 1, %bb.bv ], [ 0, %btreeGetHasContent.exit ], [ %.3196, %bb.bp ], [ 0, %bb.cn ], [ 0, %.thread391.sink.split ]
  br i1 %.not266, label %releasePage.exit, label %bb.co

bb.co:                                            ; preds = %.thread391
  %i.ob = getelementptr i8, ptr %i.bd, i64 112
  %.val.i323 = load ptr, ptr %i.ob, align 8, !tbaa !1010 ; 7 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val.i323, i64 52
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !895
end_hunk_1
