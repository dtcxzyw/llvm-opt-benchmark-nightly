Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@ptrmapGet:bb.a
  %i.ax = zext nneg i32 %i.x to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !741
  store i8 %i.az, ptr %2, align 1, !tbaa !741
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %3, align 4, !tbaa !576
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !902
  %i.bf = and i16 %i.be, 32
  %.not.i.i24 = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !903 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !904
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !904
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 168 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !905
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !906
  store ptr %i.t, ptr %i.bl, align 8, !tbaa !905
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !907 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !908
  %i.bs = add i32 %i.br, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !637
  %i.bw = mul nsw i64 %i.bv, %i.bt
  %i.bx = load ptr, ptr %i.u, align 8, !tbaa !901
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !870
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !910
  %i.cb = call i32 %i.ca(ptr noundef nonnull %i.bp, i64 noundef %i.bw, ptr noundef %i.bx) #58, !inline_history !33 ; 0 uses
  br label %sqlite3PagerUnref.exit25

bb.k:                                             ; preds = %bb.i
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %i.t)
  br label %sqlite3PagerUnref.exit25

sqlite3PagerUnref.exit25:                         ; preds = %bb.j, %bb.k
  %i.cc = load i8, ptr %2, align 1, !tbaa !741
  %i.cd = add i8 %i.cc, -6
  %or.cond = icmp ult i8 %i.cd, -5
  br i1 %or.cond, label %.sink.split, label %bb.l

.sink.split:                                      ; preds = %sqlite3PagerUnref.exit25, %bb.f, %bb.e
  %.sink = phi i32 [ 73733, %bb.f ], [ 73733, %bb.e ], [ 73741, %sqlite3PagerUnref.exit25 ]
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef %.sink, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %sqlite3PagerUnref.exit25, %ptrmapPageno.exit
  %.0 = phi i32 [ %i.s, %ptrmapPageno.exit ], [ 0, %sqlite3PagerUnref.exit25 ], [ 11, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @allocateBtreePage(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 3) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1007 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 64         ; 8 uses
  %.val = load i32, ptr %i.g, align 8, !tbaa !1017 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1009
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  %i.k = load i32, ptr %i.j, align 1              ; 2 uses
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)  ; 3 uses
  %.not = icmp ult i32 %i.l, %.val
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79118, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.m = call fastcc i32 @ptrmapGet(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %i.b, ptr noundef null) ; 2 uses
  %.not264 = icmp eq i32 %i.m, 0
  %i.n = load i8, ptr %i.b, align 1
  %i.o = icmp eq i8 %i.n, 2
  %spec.select = zext i1 %i.o to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br i1 %.not264, label %bb.h, label %releasePage.exit338

bb.g:                                             ; preds = %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.e, %bb.f
  %.2195 = phi i8 [ %spec.select, %bb.f ], [ 0, %bb.e ], [ 1, %bb.g ], [ 0, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1030 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !903  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.u = load i16, ptr %i.t, align 4, !tbaa !902
  %i.v = and i16 %i.u, 4
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1022
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !908
  %.not13.i = icmp ult i32 %i.x, %i.z
  br i1 %.not13.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1012
  %.not15.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.q), !inline_history !1023
  br label %sqlite3PagerWrite.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1024 ; 2 uses
  %.not14.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i, label %bb.m, label %releasePage.exit338

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !1025
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !637
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.ag, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.q), !inline_history !1023
  br label %sqlite3PagerWrite.exit

bb.o:                                             ; preds = %bb.m
  %i.am = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.q), !inline_history !1023
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.k, %bb.n, %bb.o
  %.0.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.o ], [ %i.al, %bb.n ] ; 2 uses
  %.not265 = icmp eq i32 %.0.i, 0
  br i1 %.not265, label %sqlite3PagerWrite.exit.thread, label %releasePage.exit338

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.j, %sqlite3PagerWrite.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !1009 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ap = add i32 %i.l, -1                        ; 4 uses
  %i.aq = lshr i32 %i.ap, 24
  %i.ar = trunc nuw i32 %i.aq to i8
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !741
  %i.as = lshr i32 %i.ap, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 37
  store i8 %i.at, ptr %i.au, align 1, !tbaa !741
  %i.av = lshr i32 %i.ap, 8
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 38
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !741
  %i.ay = trunc i32 %i.ap to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 39
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !741
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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1009 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !741
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw i32 %i.bh, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !741
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 16
  %i.bn = or disjoint i32 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !741
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !1009 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !741
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw i32 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 33
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !741
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 16
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 34
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !741
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink568.in = phi ptr [ %i.cj, %bb.r ], [ %i.bt, %bb.q ]
  %.sink = phi i32 [ %i.ci, %bb.r ], [ %i.bs, %bb.q ]
  %.sink568 = load i8, ptr %.sink568.in, align 1, !tbaa !741
  %i.ck = zext i8 %.sink568 to i32
  %i.cl = or disjoint i32 %.sink, %i.ck           ; 6 uses
  %i.cm = icmp ugt i32 %i.cl, %.val
  br i1 %i.cm, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = add i32 %.0190, 1
  %i.co = icmp ugt i32 %.0190, %i.l
  br i1 %i.co, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.s, %bb.t
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79174, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %releasePage.exit334

bb.u:                                             ; preds = %bb.t
  %i.cp = call fastcc i32 @btreeGetUnusedPage(ptr noundef %0, i32 noundef %i.cl, ptr noundef %i.a, i32 noundef 0) ; 2 uses
  %.not267 = icmp eq i32 %i.cp, 0
  br i1 %.not267, label %bb.v, label %releasePage.exit334

bb.v:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !1752 ; 22 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80 ; 7 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1009 ; 10 uses
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
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1030 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !903 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !902
  %i.dh = and i16 %i.dg, 4
  %.not.i288 = icmp eq i16 %i.dh, 0
  br i1 %.not.i288, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !1022
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !908
  %.not13.i289 = icmp ult i32 %i.dj, %i.dl
  br i1 %.not13.i289, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !1012
  %.not15.i290 = icmp eq i32 %i.dn, 0
  br i1 %.not15.i290, label %sqlite3PagerWrite.exit293.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.dc), !inline_history !1023
  br label %sqlite3PagerWrite.exit293

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !1024 ; 2 uses
  %.not14.i292 = icmp eq i32 %i.dq, 0
  br i1 %.not14.i292, label %bb.ab, label %.thread397.thread518

bb.ab:                                            ; preds = %bb.aa
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !1025
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !637
  %i.dv = trunc i64 %i.du to i32
  %i.dw = icmp ugt i32 %i.ds, %i.dv
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.dc), !inline_history !1023
  br label %sqlite3PagerWrite.exit293

bb.ad:                                            ; preds = %bb.ab
  %i.dy = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.dc), !inline_history !1023
  br label %sqlite3PagerWrite.exit293

sqlite3PagerWrite.exit293:                        ; preds = %bb.z, %bb.ac, %bb.ad
  %.0.i291 = phi i32 [ %i.do, %bb.z ], [ %i.dy, %bb.ad ], [ %i.dx, %bb.ac ] ; 2 uses
  %.not268 = icmp eq i32 %.0.i291, 0
  br i1 %.not268, label %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, label %.thread397.thread518

sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge: ; preds = %sqlite3PagerWrite.exit293
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !1009
  br label %sqlite3PagerWrite.exit293.thread

sqlite3PagerWrite.exit293.thread:                 ; preds = %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge, %bb.y
  %i.dz = phi ptr [ %.pre, %sqlite3PagerWrite.exit293.sqlite3PagerWrite.exit293.thread_crit_edge ], [ %i.cs, %bb.y ]
  store i32 %i.cl, ptr %2, align 4, !tbaa !576
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !1009
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i32, ptr %i.dz, align 1
  store i32 %i.ec, ptr %i.eb, align 1
  store ptr %i.cq, ptr %1, align 8, !tbaa !1752
  br label %.thread391.sink.split

bb.ae:                                            ; preds = %bb.v
  %i.ed = load i32, ptr %i.ba, align 8, !tbaa !1077
  %i.ee = lshr i32 %i.ed, 2
  %i.ef = add nsw i32 %i.ee, -2
  %i.eg = icmp ugt i32 %i.cy, %i.ef
  br i1 %i.eg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79203, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
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
  store i32 %i.cl, ptr %2, align 4, !tbaa !576
  store ptr %i.cq, ptr %1, align 8, !tbaa !1752
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1030 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !903 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 52
  %i.eo = load i16, ptr %i.en, align 4, !tbaa !902
  %i.ep = and i16 %i.eo, 4
  %.not.i294 = icmp eq i16 %i.ep, 0
  br i1 %.not.i294, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1022
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.et = load i32, ptr %i.es, align 8, !tbaa !908
  %.not13.i295 = icmp ult i32 %i.er, %i.et
  br i1 %.not13.i295, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 128
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !1012
  %.not15.i296 = icmp eq i32 %i.ev, 0
  br i1 %.not15.i296, label %sqlite3PagerWrite.exit299.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ek), !inline_history !1023
  br label %sqlite3PagerWrite.exit299

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !1024 ; 2 uses
  %.not14.i298 = icmp eq i32 %i.ey, 0
  br i1 %.not14.i298, label %bb.an, label %.thread397.thread518

bb.an:                                            ; preds = %bb.am
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 184
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !1025
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !637
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp ugt i32 %i.fa, %i.fd
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ek), !inline_history !1023
  br label %sqlite3PagerWrite.exit299

bb.ap:                                            ; preds = %bb.an
  %i.fg = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.ek), !inline_history !1023
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
  %i.fh = load ptr, ptr %i.h, align 8, !tbaa !1009
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !1009
  %i.fk = load i32, ptr %i.fj, align 1
  store i32 %i.fk, ptr %i.fi, align 1
  br label %.thread391.sink.split

bb.as:                                            ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1030 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !903 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 52
  %i.fq = load i16, ptr %i.fp, align 4, !tbaa !902
  %i.fr = and i16 %i.fq, 4
  %.not.i300 = icmp eq i16 %i.fr, 0
  br i1 %.not.i300, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !1022
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !908
  %.not13.i301 = icmp ult i32 %i.ft, %i.fv
  br i1 %.not13.i301, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !1012
  %.not15.i302 = icmp eq i32 %i.fx, 0
  br i1 %.not15.i302, label %sqlite3PagerWrite.exit305.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fy = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.fm), !inline_history !1023
  br label %sqlite3PagerWrite.exit305

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !1024 ; 2 uses
  %.not14.i304 = icmp eq i32 %i.ga, 0
  br i1 %.not14.i304, label %bb.ax, label %.thread397.thread518

bb.ax:                                            ; preds = %bb.aw
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 184
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !1025
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 200
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !637
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = icmp ugt i32 %i.gc, %i.gf
  br i1 %i.gg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gh = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.fm), !inline_history !1023
  br label %sqlite3PagerWrite.exit305

bb.az:                                            ; preds = %bb.ax
  %i.gi = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.fm), !inline_history !1023
  br label %sqlite3PagerWrite.exit305

sqlite3PagerWrite.exit305:                        ; preds = %bb.av, %bb.ay, %bb.az
  %.0.i303 = phi i32 [ %i.fy, %bb.av ], [ %i.gi, %bb.az ], [ %i.gh, %bb.ay ] ; 2 uses
  %.not280 = icmp eq i32 %.0.i303, 0
  br i1 %.not280, label %sqlite3PagerWrite.exit305.thread, label %.thread397.thread518

sqlite3PagerWrite.exit305.thread:                 ; preds = %bb.au, %sqlite3PagerWrite.exit305
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1009
  %i.gl = load ptr, ptr %i.cr, align 8, !tbaa !1009
  %i.gm = load i32, ptr %i.gl, align 1
  store i32 %i.gm, ptr %i.gk, align 1
  br label %.thread391.sink.split

bb.ba:                                            ; preds = %sqlite3PagerWrite.exit299.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.gn = load ptr, ptr %i.cr, align 8, !tbaa !1009 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !741 ; 3 uses
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw i32 %i.gq, 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 9
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !741 ; 3 uses
  %i.gu = zext i8 %i.gt to i32
  %i.gv = shl nuw nsw i32 %i.gu, 16
  %i.gw = or disjoint i32 %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 10
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !741 ; 3 uses
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 11
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !741 ; 3 uses
  %i.hd = zext i8 %i.hc to i32
  %i.he = or disjoint i32 %i.gw, %i.ha
  %i.hf = or disjoint i32 %i.he, %i.hd            ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, %.val
  br i1 %i.hg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79237, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread369

bb.bc:                                            ; preds = %bb.ba
  %i.hh = call fastcc i32 @btreeGetUnusedPage(ptr noundef nonnull %0, i32 noundef %i.hf, ptr noundef %i.c, i32 noundef 0) ; 2 uses
  %.not277 = icmp eq i32 %i.hh, 0
  br i1 %.not277, label %bb.bd, label %.thread369

bb.bd:                                            ; preds = %bb.bc
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !1752 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1030 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !903 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 52
  %i.ho = load i16, ptr %i.hn, align 4, !tbaa !902
  %i.hp = and i16 %i.ho, 4
  %.not.i306 = icmp eq i16 %i.hp, 0
  br i1 %.not.i306, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !1022
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !908
  %.not13.i307 = icmp ult i32 %i.hr, %i.ht
  br i1 %.not13.i307, label %bb.bh, label %bb.bf

end_hunk_0
begin_hunk_1_@allocateBtreePage:bb.a
  br i1 %.not15.i308, label %sqlite3PagerWrite.exit311.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hw = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.hk), !inline_history !1023
  br label %sqlite3PagerWrite.exit311

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 48
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !1024 ; 2 uses
  %.not14.i310 = icmp eq i32 %i.hy, 0
  br i1 %.not14.i310, label %bb.bi, label %sqlite3PagerWrite.exit311.thread365

bb.bi:                                            ; preds = %bb.bh
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !1025
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !637
  %i.id = trunc i64 %i.ic to i32
  %i.ie = icmp ugt i32 %i.ia, %i.id
  br i1 %i.ie, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.if = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.hk), !inline_history !1023
  br label %sqlite3PagerWrite.exit311

bb.bk:                                            ; preds = %bb.bi
  %i.ig = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.hk), !inline_history !1023
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
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !1009
  %i.ij = load ptr, ptr %i.cr, align 8, !tbaa !1009
  %i.ik = load i32, ptr %i.ij, align 1
  store i32 %i.ik, ptr %i.ii, align 1
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !1009 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = add i32 %i.cy, -1                       ; 5 uses
  %i.io = lshr i32 %i.in, 24
  %i.ip = trunc nuw i32 %i.io to i8
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !741
  %i.iq = lshr i32 %i.in, 16
  %i.ir = trunc i32 %i.iq to i8
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 5
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !741
  %i.it = lshr i32 %i.in, 8
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !741
  %i.iw = trunc i32 %i.in to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 7
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !741
  %i.iy = load ptr, ptr %i.ih, align 8, !tbaa !1009
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.cr, align 8, !tbaa !1009
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.jc = shl i32 %i.in, 2
  %i.jd = zext i32 %i.jc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull align 1 %i.jb, i64 %i.jd, i1 false)
  tail call fastcc void @releasePage(ptr noundef nonnull %i.hi)
  br i1 %.not266, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %sqlite3PagerWrite.exit311.thread
  %i.je = load ptr, ptr %i.h, align 8, !tbaa !1009 ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  store i8 %i.gp, ptr %i.jf, align 1, !tbaa !741
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 33
  store i8 %i.gt, ptr %i.jg, align 1, !tbaa !741
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 34
  store i8 %i.gy, ptr %i.jh, align 1, !tbaa !741
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 35
  store i8 %i.hc, ptr %i.ji, align 1, !tbaa !741
  br label %bb.bo

bb.bm:                                            ; preds = %sqlite3PagerWrite.exit311.thread
  %i.jj = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !1030
  %i.jl = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.jk) ; 2 uses
  %.not279 = icmp eq i32 %i.jl, 0
  br i1 %.not279, label %bb.bn, label %.thread369

bb.bn:                                            ; preds = %bb.bm
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !1009 ; 4 uses
  store i8 %i.gp, ptr %i.jn, align 1, !tbaa !741
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store i8 %i.gt, ptr %i.jo, align 1, !tbaa !741
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  store i8 %i.gy, ptr %i.jp, align 1, !tbaa !741
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  store i8 %i.hc, ptr %i.jq, align 1, !tbaa !741
  br label %bb.bo

.thread369:                                       ; preds = %bb.bm, %bb.bc, %bb.bb, %sqlite3PagerWrite.exit311.thread365
  %.2209.ph = phi i32 [ 11, %bb.bb ], [ %.0.i309368, %sqlite3PagerWrite.exit311.thread365 ], [ %i.jl, %bb.bm ], [ %i.hh, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %.thread397.thread518

bb.bo:                                            ; preds = %bb.bl, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
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
  br i1 %exitcond475.not, label %.loopexit, label %.preheader, !llvm.loop !4541

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
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !4542

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
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 79302, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread397

bb.bv:                                            ; preds = %.loopexit
  %5 = icmp eq i32 %i.ks, %3
  %6 = icmp ult i32 %i.ks, %3
  %or.cond14 = and i1 %i.bb, %6
  %7 = or i1 %5, %or.cond14
  %or.cond445 = or i1 %7, %.not472
  br i1 %or.cond445, label %bb.bw, label %.thread391

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.ks, ptr %2, align 4, !tbaa !576
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !1030 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !903 ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 52
  %i.la = load i16, ptr %i.kz, align 4, !tbaa !902
  %i.lb = and i16 %i.la, 4
  %.not.i315 = icmp eq i16 %i.lb, 0
  br i1 %.not.i315, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !1022
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !908
  %.not13.i316 = icmp ult i32 %i.ld, %i.lf
  br i1 %.not13.i316, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 128
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !1012
  %.not15.i317 = icmp eq i32 %i.lh, 0
  br i1 %.not15.i317, label %sqlite3PagerWrite.exit320.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.li = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.kw), !inline_history !1023
  br label %sqlite3PagerWrite.exit320

bb.ca:                                            ; preds = %bb.bx, %bb.bw
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !1024 ; 2 uses
  %.not14.i319 = icmp eq i32 %i.lk, 0
  br i1 %.not14.i319, label %bb.cb, label %.thread397.thread518

bb.cb:                                            ; preds = %bb.ca
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 184
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !1025
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 200
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !637
  %i.lp = trunc i64 %i.lo to i32
  %i.lq = icmp ugt i32 %i.lm, %i.lp
  br i1 %i.lq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lr = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.kw), !inline_history !1023
  br label %sqlite3PagerWrite.exit320

bb.cd:                                            ; preds = %bb.cb
  %i.ls = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.kw), !inline_history !1023
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
  store i8 %i.mb, ptr %i.ct, align 1, !tbaa !741
  %i.mc = lshr i32 %i.lt, 16
  %i.md = trunc i32 %i.mc to i8
  store i8 %i.md, ptr %i.cu, align 1, !tbaa !741
  %i.me = lshr i32 %i.lt, 8
  %i.mf = trunc i32 %i.me to i8
  store i8 %i.mf, ptr %i.cv, align 1, !tbaa !741
  %i.mg = trunc i32 %i.lt to i8
  store i8 %i.mg, ptr %i.cw, align 1, !tbaa !741
  %i.mh = load i32, ptr %2, align 4, !tbaa !576   ; 3 uses
  %.val287 = load ptr, ptr %i.bc, align 8, !tbaa !1070 ; 3 uses
  %.not.i321 = icmp eq ptr %.val287, null
  br i1 %.not.i321, label %btreeGetHasContent.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val.i = load i32, ptr %.val287, align 8, !tbaa !1407 ; 2 uses
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
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !1408 ; 3 uses
  %.not30.i.i = icmp eq i32 %i.ml, 0
  br i1 %.not30.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i.i
  %i.mm = udiv i32 %.024.fr.i.i, %i.ml
  %i.mn = urem i32 %.024.fr.i.i, %i.ml
  %i.mo = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !741 ; 2 uses
  %.not32.not.i.i = icmp eq ptr %i.mr, null
  br i1 %.not32.not.i.i, label %btreeGetHasContent.exit, label %.preheader.i.i

bb.cj:                                            ; preds = %.preheader.i.i
  %i.ms = load i32, ptr %.025.i.i, align 8, !tbaa !1407
  %i.mt = icmp ult i32 %i.ms, 3969
  br i1 %i.mt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mu = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.mv = lshr i32 %.024.fr.i.i, 3
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !741
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
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !741 ; 2 uses
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
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !741 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not31.i.i, label %btreeGetHasContent.exit, label %.lr.ph.i.i, !llvm.loop !107

btreeGetHasContent.exit:                          ; preds = %bb.ci, %.lr.ph.i.i, %bb.cm, %bb.cf, %bb.cg, %bb.ch, %bb.ck, %bb.cl
  %i.ns = phi i32 [ 1, %bb.cf ], [ 0, %bb.cg ], [ 1, %bb.ch ], [ 0, %.lr.ph.i.i ], [ %i.nd, %bb.ck ], [ 1, %bb.cl ], [ 1, %bb.cm ], [ 1, %bb.ci ]
  %i.nt = tail call fastcc i32 @btreeGetUnusedPage(ptr noundef %0, i32 noundef %i.mh, ptr noundef %1, i32 noundef %i.ns) ; 2 uses
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.cn, label %.thread391

bb.cn:                                            ; preds = %btreeGetHasContent.exit
  %i.nv = load ptr, ptr %1, align 8, !tbaa !1752
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 112
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !1030
  %i.ny = tail call fastcc i32 @sqlite3PagerWrite(ptr noundef %i.nx) ; 2 uses
  %.not275 = icmp eq i32 %i.ny, 0
  br i1 %.not275, label %.thread391, label %.split

.split:                                           ; preds = %bb.cn
  %i.nz = load ptr, ptr %1, align 8, !tbaa !1752
  tail call fastcc void @releasePage(ptr noundef %i.nz)
  br label %.thread391.sink.split

.thread391.sink.split:                            ; preds = %sqlite3PagerWrite.exit305.thread, %bb.ar, %bb.bo, %sqlite3PagerWrite.exit293.thread, %.split
  %.sink569 = phi ptr [ %1, %.split ], [ %i.a, %sqlite3PagerWrite.exit293.thread ], [ %i.a, %bb.bo ], [ %i.a, %bb.ar ], [ %i.a, %sqlite3PagerWrite.exit305.thread ]
  %.ph = phi ptr [ %i.cq, %.split ], [ null, %sqlite3PagerWrite.exit293.thread ], [ null, %bb.bo ], [ null, %bb.ar ], [ null, %sqlite3PagerWrite.exit305.thread ]
  %.8.ph = phi i32 [ %i.ny, %.split ], [ 0, %sqlite3PagerWrite.exit293.thread ], [ 0, %bb.bo ], [ 0, %bb.ar ], [ 0, %sqlite3PagerWrite.exit305.thread ]
  store ptr null, ptr %.sink569, align 8, !tbaa !1752
  br label %.thread391

.thread391:                                       ; preds = %.thread391.sink.split, %bb.bv, %bb.cn, %btreeGetHasContent.exit, %bb.bp
  %i.oa = phi ptr [ %i.cq, %bb.bv ], [ %i.cq, %btreeGetHasContent.exit ], [ %i.cq, %bb.bp ], [ %i.cq, %bb.cn ], [ %.ph, %.thread391.sink.split ] ; 2 uses
  %.8 = phi i32 [ 0, %bb.bv ], [ %i.nt, %btreeGetHasContent.exit ], [ 0, %bb.bp ], [ 0, %bb.cn ], [ %.8.ph, %.thread391.sink.split ]
  %.7 = phi i8 [ 1, %bb.bv ], [ 0, %btreeGetHasContent.exit ], [ %.3196, %bb.bp ], [ 0, %bb.cn ], [ 0, %.thread391.sink.split ]
  br i1 %.not266, label %releasePage.exit, label %bb.co

bb.co:                                            ; preds = %.thread391
  %i.ob = getelementptr i8, ptr %i.bd, i64 112
  %.val.i323 = load ptr, ptr %i.ob, align 8, !tbaa !1030 ; 7 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val.i323, i64 52
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !902
end_hunk_1
begin_hunk_2_@fts5MultiIterNew:bb.a
  %i.ks = getelementptr inbounds nuw [128 x i8], ptr %i.af, i64 %indvars.iv110
  tail call fastcc void @fts5SegIterInit(ptr noundef nonnull %0, ptr noundef %i.kr, ptr noundef %i.ks)
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %i.kp
  br i1 %exitcond.not, label %fts5IterSetOutputCb.exit.thread, label %bb.bp, !llvm.loop !7522

fts5IterSetOutputCb.exit.thread:                  ; preds = %bb.bp, %._crit_edge.split, %._crit_edge.split.us.us, %bb.bo, %fts5SegIterHashInit.exit
  %.pr92.pr = load i32, ptr %i.a, align 4, !tbaa !3096
  %i.kt = icmp eq i32 %.pr92.pr, 0
  br i1 %i.kt, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFinishSetup(ptr noundef nonnull %0, ptr noundef nonnull %i.aa)
  br label %bb.br

.thread:                                          ; preds = %sqlite3_realloc64.exit.thread.i.i, %bb.k, %fts5IterSetOutputCb.exit, %fts5IterSetOutputCb.exit.thread
  tail call fastcc void @fts5MultiIterFree(ptr noundef nonnull %i.aa)
  store ptr null, ptr %8, align 8, !tbaa !3271
  br label %bb.br

bb.br:                                            ; preds = %fts5MultiIterAlloc.exit.thread, %bb.bq, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts5IndexFlush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [63 x i32], align 16              ; 5 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.Fts5SegWriter, align 8      ; 14 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3241 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.j, ptr %i.k, align 4, !tbaa !3096
  br label %bb.db

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3239
  %.not15 = icmp eq i32 %i.m, 0
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3242
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.db, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3229 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  store i32 0, ptr %i.g, align 4, !tbaa !576
  %i.r = tail call fastcc ptr @fts5StructureRead(ptr noundef nonnull %0), !inline_history !7523 ; 11 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !3177
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3095 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %fts5StructureInvalidate.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @fts5StructureRelease(ptr noundef nonnull %i.t), !inline_history !7523
  store ptr null, ptr %i.s, align 8, !tbaa !3095
  br label %fts5StructureInvalidate.exit.i

fts5StructureInvalidate.exit.i:                   ; preds = %bb.f, %bb.e
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !3238
  %.not.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i, label %fts5AllocateSegid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %fts5StructureInvalidate.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 17 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3096
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %fts5AllocateSegid.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !576
  %i.aa = icmp sgt i32 %i.z, 1999
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 13, ptr %i.v, align 4, !tbaa !3096
  br label %fts5AllocateSegid.exit.thread.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(252) %i.e, i8 0, i64 252, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !576 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader32.lr.ph.i.i, label %.preheader31.i.i.preheader

.preheader32.lr.ph.i.i:                           ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %wide.trip.count39.i.i = zext nneg i32 %i.ac to i64
  br label %.preheader32.i.i

.preheader32.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader32.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ 0, %.preheader32.lr.ph.i.i ], [ %indvars.iv.next37.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv36.i.i ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3180 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader32.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3244
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 8, !tbaa !3246
  %i.an = add i32 %i.am, -1                       ; 3 uses
  %or.cond.i.i = icmp ult i32 %i.an, 2000
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = and i32 %i.an, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.an, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !576
  %i.au = or i32 %i.at, %i.ap
  store i32 %i.au, ptr %i.as, align 4, !tbaa !576
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.k, !llvm.loop !504

._crit_edge.i.i:                                  ; preds = %bb.m, %.preheader32.i.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %exitcond40.not.i.i = icmp eq i64 %indvars.iv.next37.i.i, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i, label %.preheader31.i.i.preheader, label %.preheader32.i.i, !llvm.loop !505

.preheader31.i.i.preheader:                       ; preds = %._crit_edge.i.i, %bb.j
  br label %.preheader31.i.i

.preheader31.i.i:                                 ; preds = %.preheader31.i.i.preheader, %.preheader31.i.i
  %indvars.iv41.i.i = phi i64 [ %indvars.iv.next42.i.i, %.preheader31.i.i ], [ 0, %.preheader31.i.i.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv41.i.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !576 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1
  br i1 %i.ax, label %.preheader31.i.i, label %.preheader.i.i, !llvm.loop !506

.preheader.i.i:                                   ; preds = %.preheader31.i.i, %.preheader.i.i
  %.028.i.i = phi i32 [ %i.ba, %.preheader.i.i ], [ 0, %.preheader31.i.i ] ; 3 uses
  %i.ay = shl nuw i32 1, %.028.i.i
  %i.az = and i32 %i.ay, %i.aw
  %.not.i191.i = icmp eq i32 %i.az, 0
  %i.ba = add nuw nsw i32 %.028.i.i, 1
  br i1 %.not.i191.i, label %fts5AllocateSegid.exit.i, label %.preheader.i.i, !llvm.loop !507

fts5AllocateSegid.exit.i:                         ; preds = %.preheader.i.i
  %i.bb = trunc nuw nsw i64 %indvars.iv41.i.i to i32
  %i.bc = shl nuw nsw i32 %i.bb, 5
  %i.bd = or disjoint i32 %i.bc, 1
  %i.be = add nuw nsw i32 %i.bd, %.028.i.i        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  %i.bf = load ptr, ptr %0, align 8, !tbaa !3138  ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 196
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3158 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 116
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3111
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 232
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !3256
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  call fastcc void @fts5WriteInit(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.be), !inline_history !7523
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.bn = load i32, ptr %i.v, align 4, !tbaa !3096
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %fts5AllocateSegid.exit.i
  %i.bp = tail call fastcc i32 @sqlite3Fts5HashScanInit(ptr noundef %i.q, ptr noundef null, i32 noundef 0), !inline_history !7523 ; 2 uses
  store i32 %i.bp, ptr %i.v, align 4, !tbaa !3096
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = getelementptr i8, ptr %i.q, i64 24      ; 3 uses
  br i1 %i.bq, label %.lr.ph270.i, label %.critedge.i

.lr.ph270.i:                                      ; preds = %bb.n
  %2 = icmp eq i32 %i.bl, 0                       ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bu = xor i1 %2, true
  %i.bv = zext i1 %2 to i32
  %i.bw = icmp eq i32 %i.bj, 1                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.val190.pr.i = load ptr, ptr %i.br, align 8, !tbaa !3360 ; 2 uses
  %.not259.i29 = icmp eq ptr %.val190.pr.i, null
  br i1 %.not259.i29, label %.critedge.i, label %sqlite3Fts5HashScanEntry.exit.i

sqlite3Fts5HashScanEntry.exit.i:                  ; preds = %.lr.ph270.i, %bb.ce
  %.val190.i30 = phi ptr [ %i.kp, %bb.ce ], [ %.val190.pr.i, %.lr.ph270.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 48 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3361 ; 6 uses
  tail call fastcc void @fts5HashAddPoslistSize(ptr noundef nonnull readonly %i.q, ptr noundef nonnull %.val190.i30, ptr noundef null)
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val190.i30, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !3362
  %reass.sub.i.i = sub i32 %i.cf, %i.cb
  %i.cg = add i32 %reass.sub.i.i, -48             ; 4 uses
  br i1 %2, label %bb.o, label %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i

sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i: ; preds = %sqlite3Fts5HashScanEntry.exit.i
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !3096
  br label %.thread.i

bb.o:                                             ; preds = %sqlite3Fts5HashScanEntry.exit.i
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cb, ptr noundef nonnull %i.bz), !inline_history !7523
  %i.ch = load i32, ptr %i.v, align 4, !tbaa !3096
  %.not176.i = icmp eq i32 %i.ch, 0
  br i1 %.not176.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.ci = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 2 uses
  %i.cj = load i32, ptr %i.bt, align 8, !tbaa !3145
  %i.ck = add i32 %i.ci, %i.cg                    ; 2 uses
  %i.cl = add i32 %i.ck, %i.cj
  %.not177.not.i = icmp sgt i32 %i.bh, %i.cl
  br i1 %.not177.not.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.bm, align 8, !tbaa !3146
  %i.cn = sext i32 %i.ci to i64
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn
  %i.cp = sext i32 %i.cg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.cd, i64 %i.cp, i1 false)
  store i32 %i.ck, ptr %i.bs, align 8, !tbaa !3145
  %.pr.i = load i32, ptr %i.v, align 4, !tbaa !3096
  br label %.loopexit262.i

.thread.i:                                        ; preds = %bb.p, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i
  %i.cq = phi i32 [ %.pre.i, %sqlite3Fts5HashScanEntry.exit..thread_crit_edge.i ], [ 0, %bb.p ] ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp sgt i32 %i.cg, 0
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i, label %.loopexit262.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.cd
  %.0156269.i = phi i32 [ %.5.i, %bb.cd ], [ 0, %.thread.i ] ; 2 uses
  %.0157268.i = phi i64 [ %.1158.i, %bb.cd ], [ 0, %.thread.i ] ; 4 uses
  %.0159267.i = phi i64 [ %i.da, %bb.cd ], [ 0, %.thread.i ]
  %.0160266.i = phi i32 [ %.2162.i, %bb.cd ], [ %i.bv, %.thread.i ] ; 5 uses
  %.0241265.i = phi i32 [ %.2243.i, %bb.cd ], [ %i.cg, %.thread.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #58
  %i.cu = sext i32 %.0156269.i to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cd, i64 %i.cu
  %i.cw = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.h), !inline_history !7523
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = add nsw i32 %.0156269.i, %i.cx          ; 13 uses
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !571
  %i.da = add i64 %i.cz, %.0159267.i              ; 14 uses
  br i1 %2, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  br i1 %i.bw, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.db = icmp slt i32 %i.cy, %.0241265.i
  br i1 %i.db, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.dc = sext i32 %i.cy to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cd, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !741
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.dg = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.bz, i32 noundef %i.cb, i64 noundef %i.da), !inline_history !7523
  %.not181.i = icmp eq i32 %i.dg, 0
  br i1 %.not181.i, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.dh = add nsw i32 %i.cy, 1                    ; 4 uses
  %i.di = icmp slt i32 %i.dh, %.0241265.i
  br i1 %i.di, label %bb.w, label %bb.cd, !llvm.loop !7524

bb.w:                                             ; preds = %bb.v
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds i8, ptr %i.cd, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !741
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %bb.cd, !llvm.loop !7524

bb.x:                                             ; preds = %bb.w
  %i.dn = add nsw i32 %i.cy, 2
  br label %bb.ad

bb.y:                                             ; preds = %bb.r
  %i.do = sext i32 %i.cy to i64
  %i.dp = getelementptr inbounds i8, ptr %i.cd, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !741
  %i.dr = and i8 %i.dq, 1
  %.not178.i = icmp eq i8 %i.dr, 0
  br i1 %.not178.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = tail call fastcc i32 @fts5FlushSecureDelete(ptr noundef nonnull %0, ptr noundef %i.r, ptr noundef nonnull %i.bz, i32 noundef %i.cb, i64 noundef %i.da), !inline_history !7523
  %.not179.i = icmp eq i32 %i.ds, 0
  br i1 %.not179.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i32, ptr %i.v, align 4, !tbaa !3096
  %.not180.i = icmp eq i32 %i.dt, 0
  br i1 %.not180.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !741
  %i.dv = icmp eq i8 %i.du, 1
  br i1 %i.dv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dw = add nsw i32 %i.cy, 1
  br label %bb.cd, !llvm.loop !7524

bb.ad:                                            ; preds = %bb.ab, %bb.z, %bb.y, %bb.x, %bb.u, %bb.t, %bb.s, %.lr.ph.i
  %.1242.i = phi i32 [ 0, %bb.x ], [ %.0241265.i, %bb.u ], [ %.0241265.i, %bb.t ], [ %.0241265.i, %bb.s ], [ %.0241265.i, %bb.y ], [ %.0241265.i, %bb.ab ], [ %.0241265.i, %bb.z ], [ %.0241265.i, %.lr.ph.i ] ; 5 uses
  %.1.i = phi i32 [ %i.dn, %bb.x ], [ %i.cy, %bb.u ], [ %i.cy, %bb.t ], [ %i.cy, %bb.s ], [ %i.cy, %bb.y ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.z ], [ %i.cy, %.lr.ph.i ] ; 9 uses
  %i.dx = load i32, ptr %i.v, align 4, !tbaa !3096
  %i.dy = icmp eq i32 %i.dx, 0
  %i.dz = icmp eq i32 %.0160266.i, 0
  %or.cond.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @fts5WriteAppendTerm(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cb, ptr noundef nonnull %i.bz), !inline_history !7523
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1161.i = phi i32 [ 1, %bb.ae ], [ %.0160266.i, %bb.ad ] ; 3 uses
  %i.ea = load i8, ptr %i.bx, align 1, !tbaa !3371
  %.not182.i = icmp eq i8 %i.ea, 0
  br i1 %.not182.i, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = load ptr, ptr %i.bm, align 8, !tbaa !3146 ; 3 uses
  %i.ec = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 4 uses
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !741
  %i.ef = trunc i32 %i.ec to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !741
  %i.eh = sext i32 %i.ec to i64
  %i.ei = getelementptr inbounds i8, ptr %i.eb, i64 %i.eh ; 4 uses
  %i.ej = icmp ult i64 %i.da, 128
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = trunc nuw nsw i64 %i.da to i8
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.el = icmp ult i64 %i.da, 16384
  br i1 %i.el, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.em = lshr i64 %i.da, 7
  %i.en = trunc nuw nsw i64 %i.em to i8
  %i.eo = or disjoint i8 %i.en, -128
  store i8 %i.eo, ptr %i.ei, align 1, !tbaa !741
  %i.ep = trunc i64 %i.da to i8
  %i.eq = and i8 %i.ep, 127
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.es = tail call fastcc i32 @fts5PutVarint64(ptr noundef nonnull %i.ei, i64 noundef %i.da), !inline_history !7523
  br label %sqlite3Fts5PutVarint.exit.i

sqlite3Fts5PutVarint.exit.i:                      ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i = phi i32 [ 1, %bb.ah ], [ 2, %bb.aj ], [ %i.es, %bb.ak ]
  %i.et = add nsw i32 %.0.i.i, %i.ec
  store i32 %i.et, ptr %i.bs, align 8, !tbaa !3145
  store i8 0, ptr %i.bx, align 1, !tbaa !3371
  call fastcc void @fts5WriteDlidxAppend(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.da), !inline_history !7523
  br label %bb.aq

bb.al:                                            ; preds = %bb.af
  %i.eu = sub i64 %i.da, %.0157268.i              ; 6 uses
  %i.ev = load ptr, ptr %i.bm, align 8, !tbaa !3146
  %i.ew = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 2 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex ; 4 uses
  %i.ez = icmp ult i64 %i.eu, 128
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fa = trunc nuw nsw i64 %i.eu to i8
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit194.i

bb.an:                                            ; preds = %bb.al
  %i.fb = icmp ult i64 %i.eu, 16384
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fc = lshr i64 %i.eu, 7
  %i.fd = trunc nuw nsw i64 %i.fc to i8
  %i.fe = or disjoint i8 %i.fd, -128
  store i8 %i.fe, ptr %i.ey, align 1, !tbaa !741
  %i.ff = trunc i64 %i.eu to i8
  %i.fg = and i8 %i.ff, 127
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit194.i

bb.ap:                                            ; preds = %bb.an
  %i.fi = tail call fastcc i32 @fts5PutVarint64(ptr noundef %i.ey, i64 noundef %i.eu), !inline_history !7523
  br label %sqlite3Fts5PutVarint.exit194.i

sqlite3Fts5PutVarint.exit194.i:                   ; preds = %bb.ap, %bb.ao, %bb.am
  %.0.i193.i = phi i32 [ 1, %bb.am ], [ 2, %bb.ao ], [ %i.fi, %bb.ap ]
  %i.fj = add nsw i32 %.0.i193.i, %i.ew
  store i32 %i.fj, ptr %i.bs, align 8, !tbaa !3145
  br label %bb.aq

bb.aq:                                            ; preds = %sqlite3Fts5PutVarint.exit194.i, %sqlite3Fts5PutVarint.exit.i
  %i.fk = load i32, ptr %i.v, align 4, !tbaa !3096
  %.not183.i = icmp eq i32 %i.fk, 0
  br i1 %.not183.i, label %bb.ar, label %.thread253.i

.thread253.i:                                     ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #58
  br label %.critedge.i

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.bw, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp slt i32 %.1.i, %.1242.i
  br i1 %i.fl, label %bb.at, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.as
  %.pre275.i = load i32, ptr %i.bs, align 8, !tbaa !3145
  br label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fm = sext i32 %.1.i to i64
  %i.fn = getelementptr inbounds i8, ptr %i.cd, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !741
  %i.fp = icmp eq i8 %i.fo, 0
  %.pre276.i = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 4 uses
  br i1 %i.fp, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fq = load ptr, ptr %i.bm, align 8, !tbaa !3146 ; 2 uses
  %i.fr = add nsw i32 %.pre276.i, 1               ; 4 uses
  store i32 %i.fr, ptr %i.bs, align 8, !tbaa !3145
  %i.fs = sext i32 %.pre276.i to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs
  store i8 0, ptr %i.ft, align 1, !tbaa !741
  %i.fu = add nsw i32 %.1.i, 1                    ; 4 uses
  %i.fv = icmp slt i32 %i.fu, %.1242.i
  br i1 %i.fv, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fw = sext i32 %i.fu to i64
  %i.fx = getelementptr inbounds i8, ptr %i.cd, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !741
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ga = add nsw i32 %.pre276.i, 2               ; 2 uses
  store i32 %i.ga, ptr %i.bs, align 8, !tbaa !3145
  %i.gb = sext i32 %i.fr to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fq, i64 %i.gb
  store i8 0, ptr %i.gc, align 1, !tbaa !741
  %i.gd = add nsw i32 %.1.i, 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %._crit_edge.i
  %i.ge = phi i32 [ %i.ga, %bb.aw ], [ %i.fr, %bb.av ], [ %i.fr, %bb.au ], [ %.pre276.i, %bb.at ], [ %.pre275.i, %._crit_edge.i ]
  %.2.i = phi i32 [ %i.gd, %bb.aw ], [ %i.fu, %bb.av ], [ %i.fu, %bb.au ], [ %.1.i, %bb.at ], [ %.1.i, %._crit_edge.i ] ; 2 uses
  %i.gf = load i32, ptr %i.bt, align 8, !tbaa !3145
  %i.gg = add nsw i32 %i.gf, %i.ge
  %.not188.i = icmp slt i32 %i.gg, %i.bh
  br i1 %.not188.i, label %bb.cd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @fts5WriteFlushLeaf(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !7523
  br label %bb.cd

bb.az:                                            ; preds = %bb.ar
  %i.gh = sext i32 %.1.i to i64
  %i.gi = getelementptr inbounds i8, ptr %i.cd, i64 %i.gh ; 4 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !741 ; 2 uses
  %i.gk = zext i8 %i.gj to i32                    ; 3 uses
  %.not.i195.i = icmp sgt i8 %i.gj, -1
  br i1 %.not.i195.i, label %fts5GetPoslistSize.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !741 ; 2 uses
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %.not27.i.i.i = icmp sgt i8 %i.gm, -1
  br i1 %.not27.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.go = shl nuw nsw i32 %i.gk, 7
  %i.gp = and i32 %i.go, 16256
  %i.gq = or disjoint i32 %i.gp, %i.gn
  br label %fts5GetPoslistSize.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !741 ; 2 uses
  %.not28.i.i.i = icmp sgt i8 %i.gs, -1
  br i1 %.not28.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gk, 14
  %.masked.i.i.i = and i32 %i.gu, 2080768
  %i.gv = shl nuw nsw i32 %i.gn, 7
  %i.gw = and i32 %i.gv, 16256
  %i.gx = or disjoint i32 %i.gw, %.masked.i.i.i
  %i.gy = or disjoint i32 %i.gx, %i.gt
  br label %fts5GetPoslistSize.exit.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  %i.gz = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.gi, ptr noundef nonnull %i.d), !inline_history !7523
  %i.ha = load i64, ptr %i.d, align 8, !tbaa !571
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.hb, 2147483647
  %i.hd = zext nneg i8 %i.gz to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  br label %fts5GetPoslistSize.exit.i

fts5GetPoslistSize.exit.i:                        ; preds = %bb.be, %bb.bd, %bb.bb, %bb.az
  %.08.i.i = phi i32 [ %i.gk, %bb.az ], [ %i.hc, %bb.be ], [ %i.gq, %bb.bb ], [ %i.gy, %bb.bd ] ; 7 uses
  %.0.i196.i = phi i32 [ 1, %bb.az ], [ %i.hd, %bb.be ], [ 2, %bb.bb ], [ 3, %bb.bd ] ; 2 uses
  %i.he = lshr i32 %.08.i.i, 1                    ; 2 uses
  %i.hf = trunc i32 %.08.i.i to i1
  %or.cond3.i = and i1 %i.bu, %i.hf
  br i1 %or.cond3.i, label %bb.bf, label %bb.bo

bb.bf:                                            ; preds = %fts5GetPoslistSize.exit.i
  %i.hg = and i32 %.08.i.i, -2                    ; 2 uses
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 4 uses
  %i.hj = add i32 %i.hi, 9                        ; 2 uses
  %i.hk = load i32, ptr %i.by, align 4, !tbaa !3219 ; 3 uses
  %.not.i197.i = icmp ugt i32 %i.hj, %i.hk
  br i1 %.not.i197.i, label %bb.bg, label %._crit_edge.i198.i

._crit_edge.i198.i:                               ; preds = %bb.bf
  %.pre.i.i = load ptr, ptr %i.bm, align 8, !tbaa !3146
  br label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i.i = icmp eq i32 %i.hk, 0
  %narrow.i.i.i = select i1 %.not.i.i.i, i32 64, i32 %i.hk
  %spec.select.i.i.i = sext i32 %narrow.i.i.i to i64
  %i.hl = zext i32 %i.hj to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.016.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.bg ], [ %i.hn, %bb.bh ] ; 4 uses
  %i.hm = icmp ult i64 %.016.i.i.i, %i.hl
  %i.hn = shl nuw nsw i64 %.016.i.i.i, 1
  br i1 %i.hm, label %bb.bh, label %bb.bi, !llvm.loop !447

bb.bi:                                            ; preds = %bb.bh
  %i.ho = load ptr, ptr %i.bm, align 8, !tbaa !3146
  %i.hp = tail call i32 @sqlite3_initialize(), !inline_history !7525
  %.not.i.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i.i.i, label %sqlite3_realloc64.exit.i.i.i, label %sqlite3Fts5BufferSize.exit.i.i

sqlite3_realloc64.exit.i.i.i:                     ; preds = %bb.bi
  %i.hq = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.ho, i64 noundef %.016.i.i.i), !inline_history !7525 ; 3 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %sqlite3Fts5BufferSize.exit.i.i, label %sqlite3Fts5BufferSize.exit.thread.i.i

sqlite3Fts5BufferSize.exit.thread.i.i:            ; preds = %sqlite3_realloc64.exit.i.i.i
  %i.hs = trunc i64 %.016.i.i.i to i32
  store i32 %i.hs, ptr %i.by, align 4, !tbaa !3219
  store ptr %i.hq, ptr %i.bm, align 8, !tbaa !3146
  br label %bb.bj

sqlite3Fts5BufferSize.exit.i.i:                   ; preds = %sqlite3_realloc64.exit.i.i.i, %bb.bi
  store i32 7, ptr %i.v, align 4, !tbaa !576
  br label %sqlite3Fts5BufferAppendVarint.exit.i

bb.bj:                                            ; preds = %sqlite3Fts5BufferSize.exit.thread.i.i, %._crit_edge.i198.i
  %i.ht = phi ptr [ %.pre.i.i, %._crit_edge.i198.i ], [ %i.hq, %sqlite3Fts5BufferSize.exit.thread.i.i ]
  %i.hu = sext i32 %i.hi to i64
  %i.hv = getelementptr inbounds i8, ptr %i.ht, i64 %i.hu ; 4 uses
  %i.hw = icmp samesign ult i32 %.08.i.i, 128
  br i1 %i.hw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hx = trunc nuw i32 %i.hg to i8
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.hy = icmp samesign ult i32 %.08.i.i, 16384
  br i1 %i.hy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hz = lshr i32 %.08.i.i, 7
  %i.ia = trunc nuw nsw i32 %i.hz to i8
  %i.ib = or disjoint i8 %i.ia, -128
  store i8 %i.ib, ptr %i.hv, align 1, !tbaa !741
  %i.ic = trunc i32 %.08.i.i to i8
  %i.id = and i8 %i.ic, 126
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !741
  br label %sqlite3Fts5PutVarint.exit.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.if = tail call fastcc i32 @fts5PutVarint64(ptr noundef %i.hv, i64 noundef %i.hh), !inline_history !7526
  br label %sqlite3Fts5PutVarint.exit.i.i

sqlite3Fts5PutVarint.exit.i.i:                    ; preds = %bb.bn, %bb.bm, %bb.bk
  %.0.i.i.i = phi i32 [ 1, %bb.bk ], [ 2, %bb.bm ], [ %i.if, %bb.bn ]
  %i.ig = add nsw i32 %.0.i.i.i, %i.hi            ; 2 uses
  store i32 %i.ig, ptr %i.bs, align 8, !tbaa !3145
  br label %sqlite3Fts5BufferAppendVarint.exit.i

sqlite3Fts5BufferAppendVarint.exit.i:             ; preds = %sqlite3Fts5PutVarint.exit.i.i, %sqlite3Fts5BufferSize.exit.i.i
  %i.ih = phi i32 [ %i.hi, %sqlite3Fts5BufferSize.exit.i.i ], [ %i.ig, %sqlite3Fts5PutVarint.exit.i.i ]
  %i.ii = add nsw i32 %.0.i196.i, %.1.i
  br label %bb.bp

bb.bo:                                            ; preds = %fts5GetPoslistSize.exit.i
  %i.ij = add nuw nsw i32 %.0.i196.i, %i.he
  %.pre274.i = load i32, ptr %i.bs, align 8, !tbaa !3145
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %sqlite3Fts5BufferAppendVarint.exit.i
  %i.ik = phi i32 [ %i.ih, %sqlite3Fts5BufferAppendVarint.exit.i ], [ %.pre274.i, %bb.bo ] ; 2 uses
  %.3.i = phi i32 [ %i.ii, %sqlite3Fts5BufferAppendVarint.exit.i ], [ %.1.i, %bb.bo ] ; 3 uses
  %.0155.i = phi i32 [ %i.he, %sqlite3Fts5BufferAppendVarint.exit.i ], [ %i.ij, %bb.bo ] ; 5 uses
  %i.il = load i32, ptr %i.bt, align 8, !tbaa !3145
  %i.im = add i32 %.0155.i, %i.ik                 ; 2 uses
  %i.in = add i32 %i.im, %i.il
  %.not184.i = icmp sgt i32 %i.in, %i.bh
  br i1 %.not184.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.io = load ptr, ptr %i.bm, align 8, !tbaa !3146
  %i.ip = sext i32 %i.ik to i64
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 %i.ip
  %i.ir = sext i32 %.3.i to i64
  %i.is = getelementptr inbounds i8, ptr %i.cd, i64 %i.ir
  %i.it = zext nneg i32 %.0155.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iq, ptr nonnull align 1 %i.is, i64 %i.it, i1 false)
  store i32 %i.im, ptr %i.bs, align 8, !tbaa !3145
  br label %.loopexit.i

bb.br:                                            ; preds = %bb.bp
  %i.iu = sext i32 %.3.i to i64
  %i.iv = getelementptr inbounds i8, ptr %i.cd, i64 %i.iu ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.cc, %bb.br
  %.0154.i = phi i32 [ 0, %bb.br ], [ %i.ke, %bb.cc ] ; 3 uses
  %i.iw = load i32, ptr %i.v, align 4, !tbaa !3096
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.bt, label %.loopexit.i

bb.bt:                                            ; preds = %bb.bs
  %i.iy = load i32, ptr %i.bs, align 8, !tbaa !3145 ; 3 uses
  %i.iz = load i32, ptr %i.bt, align 8, !tbaa !3145 ; 2 uses
  %i.ja = add i32 %i.iy, %i.iz
  %i.jb = sub i32 %i.bh, %i.ja                    ; 3 uses
  %i.jc = sub nsw i32 %.0155.i, %.0154.i          ; 2 uses
  %.not185.i = icmp sgt i32 %i.jc, %i.jb
  %i.jd = sext i32 %.0154.i to i64                ; 2 uses
  br i1 %.not185.i, label %bb.bu, label %fts5PoslistPrefix.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.je = getelementptr inbounds i8, ptr %i.iv, i64 %i.jd ; 5 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !741
  %.not.i.i199.i = icmp sgt i8 %i.jf, -1
  br i1 %.not.i.i199.i, label %sqlite3Fts5GetVarint32.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !741
  %.not27.i.i200.i = icmp sgt i8 %i.jh, -1
  br i1 %.not27.i.i200.i, label %sqlite3Fts5GetVarint32.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !741
  %.not28.i.i201.i = icmp sgt i8 %i.jj, -1
  br i1 %.not28.i.i201.i, label %sqlite3Fts5GetVarint32.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  %i.jk = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.je, ptr noundef nonnull %i.c), !inline_history !7523
  %i.jl = zext nneg i8 %i.jk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %sqlite3Fts5GetVarint32.exit.i.i

sqlite3Fts5GetVarint32.exit.i.i:                  ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.0.i.i202.i = phi i32 [ %i.jl, %bb.bx ], [ 2, %bb.bv ], [ 1, %bb.bu ], [ 3, %bb.bw ] ; 3 uses
  %i.jm = icmp slt i32 %.0.i.i202.i, %i.jb
  br i1 %i.jm, label %.preheader.i203.i, label %fts5PoslistPrefix.exit.i

.preheader.i203.i:                                ; preds = %sqlite3Fts5GetVarint32.exit.i.i, %sqlite3Fts5GetVarint32.exit20.i.i
  %.011.i.i = phi i32 [ %i.jw, %sqlite3Fts5GetVarint32.exit20.i.i ], [ %.0.i.i202.i, %sqlite3Fts5GetVarint32.exit.i.i ] ; 3 uses
  %i.jn = zext nneg i32 %.011.i.i to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jn ; 4 uses
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !741
  %.not.i15.i.i = icmp sgt i8 %i.jp, -1
  br i1 %.not.i15.i.i, label %sqlite3Fts5GetVarint32.exit20.i.i, label %bb.by

bb.by:                                            ; preds = %.preheader.i203.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !741
  %.not27.i16.i.i = icmp sgt i8 %i.jr, -1
  br i1 %.not27.i16.i.i, label %sqlite3Fts5GetVarint32.exit20.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !741
  %.not28.i17.i.i = icmp sgt i8 %i.jt, -1
  br i1 %.not28.i17.i.i, label %sqlite3Fts5GetVarint32.exit20.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.ju = call fastcc zeroext i8 @sqlite3Fts5GetVarint(ptr noundef nonnull readonly %i.jo, ptr noundef nonnull %i.b), !inline_history !7523
  %i.jv = zext nneg i8 %i.ju to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %sqlite3Fts5GetVarint32.exit20.i.i

sqlite3Fts5GetVarint32.exit20.i.i:                ; preds = %bb.ca, %bb.bz, %bb.by, %.preheader.i203.i
  %.0.i18.i.i = phi i32 [ %i.jv, %bb.ca ], [ 2, %bb.by ], [ 1, %.preheader.i203.i ], [ 3, %bb.bz ]
  %i.jw = add nuw nsw i32 %.0.i18.i.i, %.011.i.i  ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, %i.jb
  br i1 %i.jx, label %fts5PoslistPrefix.exit.i, label %.preheader.i203.i
end_hunk_2
