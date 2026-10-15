Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/misc_tests?download=true
inline.NumInlined: 403
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@parse_string:bb.a
  %or.cond31.3.i.i = icmp ult i8 %i.bp, 6
  br i1 %or.cond31.3.i.i, label %parse_hex4.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = add i8 %i.bm, -97
  %or.cond32.3.i.i = icmp ult i8 %i.bq, 6
  br i1 %or.cond32.3.i.i, label %parse_hex4.exit.i, label %bb.ak

parse_hex4.exit.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  %.sink37.i.i = phi i32 [ -55, %bb.z ], [ -87, %bb.aa ], [ -48, %bb.y ]
  %i.br = add nuw nsw i32 %i.bk, %i.bn
  %.1.3.i.i = add nsw i32 %i.br, %.sink37.i.i     ; 10 uses
  %i.bs = and i32 %.1.3.i.i, -1024
  switch i32 %i.bs, label %bb.af [
    i32 56320, label %utf16_literal_to_utf8.exit.thread
    i32 55296, label %bb.ab
  ]

bb.ab:                                            ; preds = %parse_hex4.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.065120, i64 6 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.o, %i.bu
  %i.bw = icmp slt i64 %i.bv, 6
  br i1 %i.bw, label %utf16_literal_to_utf8.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !54
  %.not.i = icmp eq i8 %i.bx, 92
  br i1 %.not.i, label %bb.ad, label %utf16_literal_to_utf8.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %.065120, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !54
  %.not53.i = icmp eq i8 %i.bz, 117
  br i1 %.not53.i, label %bb.ae, label %utf16_literal_to_utf8.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %.065120, i64 8
  %i.cb = tail call fastcc i32 @parse_hex4(ptr noundef nonnull %i.ca) ; 2 uses
  %i.cc = add nsw i32 %i.cb, -57344
  %or.cond5.i = icmp ult i32 %i.cc, -1024
  br i1 %or.cond5.i, label %utf16_literal_to_utf8.exit.thread, label %.thread83.i

.thread83.i:                                      ; preds = %bb.ae
  %i.cd = shl nuw nsw i32 %.1.3.i.i, 10
  %i.ce = and i32 %i.cd, 1047552
  %i.cf = and i32 %i.cb, 1023
  %i.cg = add nuw nsw i32 %i.ce, 65536
  %i.ch = or disjoint i32 %i.cf, %i.cg
  br label %.lr.ph.i

bb.af:                                            ; preds = %parse_hex4.exit.i
  %i.ci = icmp ugt i32 %.1.3.i.i, 127
  br i1 %i.ci, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cj = icmp ult i32 %.1.3.i.i, 2048
  br i1 %i.cj, label %.lr.ph.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = icmp ult i32 %.1.3.i.i, 65536
  br i1 %i.ck, label %.lr.ph.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = icmp ult i32 %.1.3.i.i, 1114112
  br i1 %i.cl, label %.lr.ph.i, label %utf16_literal_to_utf8.exit.thread

.lr.ph.i:                                         ; preds = %.thread83.i, %bb.ag, %bb.ah, %bb.ai
  %.04669.i = phi i64 [ 6, %bb.ah ], [ 12, %.thread83.i ], [ 6, %bb.ag ], [ 6, %bb.ai ]
  %.167.shrunk.i = phi i32 [ %.1.3.i.i, %bb.ah ], [ %i.ch, %.thread83.i ], [ %.1.3.i.i, %bb.ag ], [ %.1.3.i.i, %bb.ai ] ; 2 uses
  %.048.i = phi i64 [ 3, %bb.ah ], [ 4, %.thread83.i ], [ 2, %bb.ag ], [ 4, %bb.ai ] ; 4 uses
  %.045.i = phi i64 [ 224, %bb.ah ], [ 240, %.thread83.i ], [ 192, %bb.ag ], [ 240, %bb.ai ]
  %i.cm = trunc i32 %.167.shrunk.i to i8
  %i.cn = and i8 %i.cm, 63
  %i.co = or disjoint i8 %i.cn, -128
  %i.cp = getelementptr i8, ptr %.090119, i64 %.048.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !54
  %i.cr = lshr i32 %.167.shrunk.i, 6              ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %indvars.iv.next.i = add nsw i64 %.048.i, -2    ; 2 uses
  %i.ct = and i64 %indvars.iv.next.i, 255
  %.not54.i = icmp eq i64 %i.ct, 0
  br i1 %.not54.i, label %bb.aj, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.cu = trunc i32 %i.cr to i8
  %i.cv = and i8 %i.cu, 63
  %i.cw = or disjoint i8 %i.cv, -128
  %i.cx = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !54
  %i.cy = lshr i64 %i.cs, 6                       ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %.048.i, -3  ; 2 uses
  %i.cz = and i64 %indvars.iv.next.i.1, 255
  %.not54.i.1 = icmp eq i64 %i.cz, 0
  br i1 %.not54.i.1, label %bb.aj, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.da = trunc i64 %i.cy to i8
  %i.db = and i8 %i.da, 63
  %i.dc = or disjoint i8 %i.db, -128
  %i.dd = getelementptr inbounds nuw i8, ptr %.090119, i64 %indvars.iv.next.i.1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !54
  %i.de = lshr i64 %i.cs, 12
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i64 [ %i.cs, %.lr.ph.i ], [ %i.cy, %.lr.ph.i.1 ], [ %i.de, %.lr.ph.i.2 ]
  %i.df = or i64 %.lcssa, %.045.i
  br label %utf16_literal_to_utf8.exit

bb.ak:                                            ; preds = %bb.af, %bb.aa, %bb.x, %bb.u, %bb.r
  %.167.shrunk.ph.i = phi i32 [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.u ], [ 0, %bb.r ], [ %.1.3.i.i, %bb.af ]
  %.16795.i = zext nneg i32 %.167.shrunk.ph.i to i64
  br label %utf16_literal_to_utf8.exit

utf16_literal_to_utf8.exit:                       ; preds = %bb.aj, %bb.ak
  %.16795.sink.i = phi i64 [ %.16795.i, %bb.ak ], [ %i.df, %bb.aj ]
  %.0466998108.i = phi i64 [ 6, %bb.ak ], [ %.04669.i, %bb.aj ]
  %.04899106.i = phi i64 [ 1, %bb.ak ], [ %.048.i, %bb.aj ]
  %i.dg = trunc i64 %.16795.sink.i to i8
  store i8 %i.dg, ptr %.090119, align 1, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %.090119, i64 %.04899106.i
  br label %bb.al

bb.al:                                            ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %utf16_literal_to_utf8.exit
  %.191 = phi ptr [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.aj, %bb.m ], [ %i.ak, %bb.n ], [ %i.dh, %utf16_literal_to_utf8.exit ]
  %.0 = phi i64 [ 2, %bb.i ], [ 2, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %bb.n ], [ %.0466998108.i, %utf16_literal_to_utf8.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.065120, i64 %.0
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.f
  %.393 = phi ptr [ %.191, %bb.al ], [ %i.z, %bb.f ] ; 2 uses
  %.2 = phi ptr [ %i.di, %bb.al ], [ %i.y, %bb.f ] ; 2 uses
  %i.dj = icmp ult ptr %.2, %.063116.ptr.le
  br i1 %i.dj, label %.lr.ph123, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  %.090.lcssa = phi ptr [ %i.u, %.critedge.preheader ], [ %.393, %.critedge ]
  store i8 0, ptr %.090.lcssa, align 1, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 16, ptr %i.dk, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.dl, align 8, !tbaa !37
  %i.dm = load ptr, ptr %1, align 8, !tbaa !49
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.o, 1
  %i.dp = sub i64 %i.do, %i.dn
  br label %bb.am

utf16_literal_to_utf8.exit.thread:                ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %parse_hex4.exit.i, %bb.ai, %bb.o, %bb.h, %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !62
  tail call void %i.dr(ptr noundef nonnull %i.u) #29
  br label %.thread103

.thread103:                                       ; preds = %bb.b, %bb.d, %.preheader, %bb.e, %bb.a, %utf16_literal_to_utf8.exit.thread
  %.3107 = phi ptr [ %.065120, %utf16_literal_to_utf8.exit.thread ], [ %.ptr, %bb.a ], [ %.ptr, %.preheader ], [ %.ptr, %bb.e ], [ %.ptr, %bb.d ], [ %.ptr, %bb.b ]
  %i.ds = load ptr, ptr %1, align 8, !tbaa !49
  %i.dt = ptrtoint ptr %.3107 to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  br label %bb.am

bb.am:                                            ; preds = %.thread103, %.critedge._crit_edge
  %storemerge = phi i64 [ %i.dp, %.critedge._crit_edge ], [ %i.dv, %.thread103 ]
  %.067 = phi i32 [ 1, %.critedge._crit_edge ], [ 0, %.thread103 ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !53
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @parse_object(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 999
  br i1 %i.c, label %.critedge.thread119, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 20 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 5 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge.thread119

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !54
  %.not = icmp eq i8 %i.l, 123
  br i1 %.not, label %bb.d, label %.critedge.thread119

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.f, 1                      ; 4 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !53
  %i.n = icmp ult i64 %i.m, %i.h
  br i1 %i.n, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !54
  %i.r = icmp ult i8 %i.q, 33
  br i1 %i.r, label %bb.e, label %buffer_skip_whitespace.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !tbaa !53
  %exitcond.not.i = icmp eq i64 %i.s, %i.h
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.lr.ph.i

.critedge.thread.i:                               ; preds = %bb.e
  %i.t = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.t, ptr %i.e, align 8, !tbaa !53
  br label %buffer_skip_whitespace.exit

buffer_skip_whitespace.exit:                      ; preds = %.lr.ph.i, %.critedge.thread.i
  %2 = phi i64 [ %i.t, %.critedge.thread.i ], [ %i.o, %.lr.ph.i ] ; 5 uses
  %i.u = icmp ult i64 %2, %i.h
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %buffer_skip_whitespace.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !54
  %i.x = icmp eq i8 %i.w, 125
  br i1 %i.x, label %.thread114, label %bb.h

.thread114:                                       ; preds = %bb.f
  store i64 %i.b, ptr %i.a, align 8, !tbaa !63
  br label %bb.x

bb.g:                                             ; preds = %bb.d, %buffer_skip_whitespace.exit
  %3 = phi i64 [ %2, %buffer_skip_whitespace.exit ], [ %i.m, %bb.d ]
  %i.y = add i64 %3, -1
  store i64 %i.y, ptr %i.e, align 8, !tbaa !53
  br label %.critedge.thread119

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %2, -1
  store i64 %i.z, ptr %i.e, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.v, %bb.h
  %.071 = phi ptr [ null, %bb.h ], [ %.172, %bb.v ] ; 4 uses
  %.070 = phi ptr [ null, %bb.h ], [ %i.ab, %bb.v ] ; 2 uses
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ab = tail call ptr %.val(i64 noundef 64) #29, !inline_history !1 ; 11 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  %i.ac = icmp eq ptr %.071, null
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ab, ptr %.070, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.070, ptr %i.ad, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.172 = phi ptr [ %.071, %bb.k ], [ %i.ab, %bb.j ] ; 10 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !53
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !50  ; 3 uses
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.m, label %.critedge.thread123

bb.m:                                             ; preds = %bb.l
  store i64 %i.af, ptr %i.e, align 8, !tbaa !53
  %i.ai = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %buffer_skip_whitespace.exit97, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.m, %bb.n
  %i.ak = phi i64 [ %i.ao, %bb.n ], [ %i.af, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !54
  %i.an = icmp ult i8 %i.am, 33
  br i1 %i.an, label %bb.n, label %buffer_skip_whitespace.exit97

bb.n:                                             ; preds = %.lr.ph.i93
  %i.ao = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.ao, ptr %i.e, align 8, !tbaa !53
  %exitcond.not.i96 = icmp eq i64 %i.ao, %i.ag
  br i1 %exitcond.not.i96, label %.critedge.thread.i95.loopexit, label %.lr.ph.i93

.critedge.thread.i95.loopexit:                    ; preds = %bb.n
  %i.ap = add i64 %i.ag, -1
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !53
  br label %buffer_skip_whitespace.exit97

buffer_skip_whitespace.exit97:                    ; preds = %.lr.ph.i93, %bb.m, %.critedge.thread.i95.loopexit
  %i.aq = tail call fastcc i32 @parse_string(ptr noundef %i.ab, ptr noundef %1)
  %.not86 = icmp eq i32 %i.aq, 0
  br i1 %.not86, label %.critedge.thread123, label %bb.o

bb.o:                                             ; preds = %buffer_skip_whitespace.exit97
  %i.ar = load ptr, ptr %1, align 8, !tbaa !49    ; 4 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre = load i64, ptr %i.e, align 8, !tbaa !53  ; 3 uses
  %.pre143 = load i64, ptr %i.g, align 8, !tbaa !50 ; 7 uses
  %i.at = icmp ult i64 %.pre, %.pre143
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %.lr.ph.i99, label %buffer_skip_whitespace.exit103

.lr.ph.i99:                                       ; preds = %bb.o, %bb.p
  %i.au = phi i64 [ %i.ay, %bb.p ], [ %.pre, %bb.o ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !54
  %i.ax = icmp ult i8 %i.aw, 33
  br i1 %i.ax, label %bb.p, label %buffer_skip_whitespace.exit103

bb.p:                                             ; preds = %.lr.ph.i99
  %i.ay = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ay, ptr %i.e, align 8, !tbaa !53
  %exitcond.not.i102 = icmp eq i64 %i.ay, %.pre143
  br i1 %exitcond.not.i102, label %.critedge.thread.i101.loopexit, label %.lr.ph.i99

.critedge.thread.i101.loopexit:                   ; preds = %bb.p
  %i.az = add i64 %.pre143, -1                    ; 2 uses
  store i64 %i.az, ptr %i.e, align 8, !tbaa !53
  br label %buffer_skip_whitespace.exit103

buffer_skip_whitespace.exit103:                   ; preds = %.lr.ph.i99, %bb.o, %.critedge.thread.i101.loopexit
  %i.ba = phi i64 [ %i.az, %.critedge.thread.i101.loopexit ], [ %.pre, %bb.o ], [ %i.au, %.lr.ph.i99 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !45
  store ptr null, ptr %i.bb, align 8, !tbaa !37
  %i.be = icmp ult i64 %i.ba, %.pre143
  br i1 %i.be, label %bb.q, label %.critedge.thread123

bb.q:                                             ; preds = %buffer_skip_whitespace.exit103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !54
  %.not87 = icmp eq i8 %i.bg, 58
  br i1 %.not87, label %bb.r, label %.critedge.thread123

bb.r:                                             ; preds = %bb.q
  %i.bh = add nuw i64 %i.ba, 1                    ; 3 uses
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !53
  %i.bi = icmp ult i64 %i.bh, %.pre143
  br i1 %i.bi, label %.lr.ph.i105, label %buffer_skip_whitespace.exit109

.lr.ph.i105:                                      ; preds = %bb.r, %bb.s
  %i.bj = phi i64 [ %i.bn, %bb.s ], [ %i.bh, %bb.r ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !54
  %i.bm = icmp ult i8 %i.bl, 33
  br i1 %i.bm, label %bb.s, label %buffer_skip_whitespace.exit109

bb.s:                                             ; preds = %.lr.ph.i105
  %i.bn = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.bn, ptr %i.e, align 8, !tbaa !53
  %exitcond.not.i108 = icmp eq i64 %i.bn, %.pre143
  br i1 %exitcond.not.i108, label %.critedge.thread.i107.loopexit, label %.lr.ph.i105

.critedge.thread.i107.loopexit:                   ; preds = %bb.s
  %i.bo = add i64 %.pre143, -1
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !53
  br label %buffer_skip_whitespace.exit109

buffer_skip_whitespace.exit109:                   ; preds = %.lr.ph.i105, %bb.r, %.critedge.thread.i107.loopexit
  %i.bp = tail call fastcc i32 @parse_value(ptr noundef %i.ab, ptr noundef nonnull %1)
  %.not88 = icmp eq i32 %i.bp, 0
  br i1 %.not88, label %.critedge.thread123, label %bb.t

bb.t:                                             ; preds = %buffer_skip_whitespace.exit109
  %i.bq = load ptr, ptr %1, align 8, !tbaa !49    ; 3 uses
  %i.br = icmp ne ptr %i.bq, null
  %.pre197 = load i64, ptr %i.e, align 8, !tbaa !53 ; 3 uses
  %.pre198 = load i64, ptr %i.g, align 8, !tbaa !50 ; 4 uses
  %i.bs = icmp ult i64 %.pre197, %.pre198
  %or.cond230 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond230, label %.lr.ph.i173, label %buffer_skip_whitespace.exit176

.lr.ph.i173:                                      ; preds = %bb.t, %bb.u
  %i.bt = phi i64 [ %i.bx, %bb.u ], [ %.pre197, %bb.t ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !54
  %i.bw = icmp ult i8 %i.bv, 33
  br i1 %i.bw, label %bb.u, label %buffer_skip_whitespace.exit176

bb.u:                                             ; preds = %.lr.ph.i173
  %i.bx = add i64 %i.bt, 1                        ; 3 uses
  store i64 %i.bx, ptr %i.e, align 8, !tbaa !53
  %exitcond.not.i175 = icmp eq i64 %i.bx, %.pre198
  br i1 %exitcond.not.i175, label %.critedge.thread.i174.loopexit, label %.lr.ph.i173

.critedge.thread.i174.loopexit:                   ; preds = %bb.u
  %i.by = add i64 %.pre198, -1                    ; 2 uses
  store i64 %i.by, ptr %i.e, align 8, !tbaa !53
  br label %buffer_skip_whitespace.exit176

buffer_skip_whitespace.exit176:                   ; preds = %.lr.ph.i173, %bb.t, %.critedge.thread.i174.loopexit
  %i.bz = phi i64 [ %i.by, %.critedge.thread.i174.loopexit ], [ %.pre197, %bb.t ], [ %i.bt, %.lr.ph.i173 ] ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %.pre198
  br i1 %i.ca, label %bb.v, label %.critedge.thread123

bb.v:                                             ; preds = %buffer_skip_whitespace.exit176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bz
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !54
  switch i8 %i.cc, label %.critedge.thread123 [
    i8 44, label %bb.i
    i8 125, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !63
  %i.ce = add i64 %i.cd, -1
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %.172, i64 8
  store ptr %i.ab, ptr %i.cf, align 8, !tbaa !64
  br label %bb.x

bb.x:                                             ; preds = %.thread114, %bb.w
  %i.cg = phi i64 [ %2, %.thread114 ], [ %i.bz, %bb.w ]
  %.374118 = phi ptr [ null, %.thread114 ], [ %.172, %bb.w ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 64, ptr %i.ch, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.374118, ptr %i.ci, align 8, !tbaa !44
  %i.cj = add nuw i64 %i.cg, 1
  store i64 %i.cj, ptr %i.e, align 8, !tbaa !53
  br label %.critedge.thread119

.critedge:                                        ; preds = %bb.i
  %.not91 = icmp eq ptr %.071, null
  br i1 %.not91, label %.critedge.thread119, label %.critedge.thread123

end_hunk_0
